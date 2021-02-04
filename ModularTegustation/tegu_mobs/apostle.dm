GLOBAL_LIST_EMPTY(apostles)

/mob/living/simple_animal/hostile/megafauna/apostle
	name = "apostle"
	desc = "The heavens' wrath. You might've fucked up real bad to summon one."
	health = 600
	maxHealth = 600
	attack_verb_continuous = "purges"
	attack_verb_simple = "purge"
	attack_sound = 'sound/magic/mm_hit.ogg'
	icon = 'ModularTegustation/Teguicons/64x64.dmi'
	icon_state = "angel"
	icon_living = "angel"
	health_doll_icon = "angel"
	faction = list("apostle")
	friendly_verb_continuous = "stares down"
	friendly_verb_simple = "stare down"
	speak_emote = list("proclaims")
	armour_penetration = 0
	melee_damage_lower = 20
	melee_damage_upper = 20
	speed = 3
	move_to_delay = 8
	ranged = TRUE
	pixel_x = -16
	base_pixel_x = -16
	pixel_y = -16
	base_pixel_y = -16
	del_on_death = TRUE
	//crusher_loot = list()
	loot = list(/obj/item/dark_bible) // Allows 6 people to use apostle weaponry.
	gps_name = "Pure Signal"
	deathmessage = "evaporates in a moment, leaving heavenly light and feathers behind."
	deathsound = 'ModularTegustation/Tegusounds/apostle/mob/apostle_death.ogg'
	attack_action_types = list(/datum/action/innate/megafauna_attack/holy_revival,
							   /datum/action/innate/megafauna_attack/fire_field)
	small_sprite_type = /datum/action/small_sprite/megafauna/tegu/angel
	var/holy_revival_cooldown = 10 SECONDS
	var/holy_revival_cooldown_base = 10 SECONDS
	var/holy_revival_damage = 20 // Amount of damage OR heal, depending on target.
	var/fire_field_cooldown = 20 SECONDS
	var/fire_field_cooldown_base = 20 SECONDS
	var/apostle_cooldown = 20 SECONDS //Cooldown for conversion and revival of non-apostles.
	var/apostle_cooldown_base = 20 SECONDS
	var/apostle_num = 1 //Number of apostles. Used for revival and finale.
	var/apostle_line
	var/apostle_prev //Used for previous apostle's name, to reference in next line.
	var/datum/action/innate/megafauna_attack/rapture/rapture_skill = new /datum/action/innate/megafauna_attack/rapture

/mob/living/simple_animal/hostile/megafauna/apostle/Initialize()
	. = ..()

/mob/living/simple_animal/hostile/megafauna/apostle/ex_act(severity, target)
	return //Resistant to explosions

/datum/action/small_sprite/megafauna/tegu
	small_icon = 'ModularTegustation/Teguicons/megafauna.dmi'

/datum/action/small_sprite/megafauna/tegu/angel
	small_icon_state = "angel_small"

/datum/action/innate/megafauna_attack/holy_revival
	name = "Holy Revival"
	icon_icon = 'icons/obj/wizard.dmi'
	button_icon_state = "magicm"
	chosen_message = "<span class='colossus'>You are now reviving the dead, to join your cause.</span>"
	chosen_attack_num = 1

/datum/action/innate/megafauna_attack/fire_field
	name = "Fire Field"
	icon_icon = 'icons/effects/fire.dmi'
	button_icon_state = "fire"
	chosen_message = "<span class='colossus'>You are now setting the area on explosive fire.</span>"
	chosen_attack_num = 2

/datum/action/innate/megafauna_attack/rapture
	name = "Rapture"
	icon_icon = 'icons/obj/storage.dmi'
	button_icon_state = "bible"
	chosen_message = "<span class='colossus'>Finale...</span>"
	chosen_attack_num = 5

/mob/living/simple_animal/hostile/megafauna/apostle/AttackingTarget()
	if(recovery_time >= world.time)
		return
	if(ishuman(target))
		var/mob/living/carbon/human/E = target
		if("apostle" in E.faction)
			return
	. = ..()
	if(. && isliving(target))
		var/mob/living/L = target
		if(L.stat != DEAD)
			if(!client && ranged && ranged_cooldown <= world.time)
				OpenFire()

			if(L.health <= HEALTH_THRESHOLD_DEAD && HAS_TRAIT(L, TRAIT_NODEATH))
				devour(L)
		else
			devour(L)

/mob/living/simple_animal/hostile/megafauna/apostle/OpenFire()
	if(client)
		switch(chosen_attack)
			if(1)
				revive_humans()
			if(2)
				fire_field()
			if(5)
				rapture()
		return

/mob/living/simple_animal/hostile/megafauna/apostle/death(gibbed)
	for(var/datum/antagonist/apostle/A in GLOB.apostles)
		if(!A.owner || !ishuman(A.owner.current))
			continue
		A.prophet_death()
	return ..()

/mob/living/simple_animal/hostile/megafauna/apostle/proc/revive_humans()
	if(holy_revival_cooldown > world.time)
		return
	holy_revival_cooldown = (world.time + holy_revival_cooldown_base)
	playsound(src, 'ModularTegustation/Tegusounds/apostle/mob/apostle_spell.ogg', 250, 1)
	for(var/i in range(3, src))
		if(isturf(i))
			new /obj/effect/temp_visual/cult/sparks(i)
			continue
		if(ishuman(i))
			var/mob/living/carbon/human/H = i
			if(!("apostle" in H.faction))
				if(apostle_num < 13 && H.stat == DEAD && apostle_cooldown <= world.time && H.mind)
					apostle_cooldown = (world.time + apostle_cooldown_base)
					H.set_species(/datum/species/human, 1)
					H.regenerate_limbs()
					H.regenerate_organs()
					H.dna.species.GiveSpeciesFlight(H)
					H.revive(full_heal = TRUE, admin_revive = FALSE)
					H.grab_ghost(force = TRUE)
					to_chat(H, "<span class='notice'>You feel protected by holy light!</span>")
					// Giving the fancy stuff to new apostle
					H.faction |= "apostle"
					ADD_TRAIT(H, TRAIT_BOMBIMMUNE, SPECIES_TRAIT)
					ADD_TRAIT(H, TRAIT_NOFIRE, SPECIES_TRAIT)
					ADD_TRAIT(H, TRAIT_NOBREATH, SPECIES_TRAIT)
					ADD_TRAIT(H, TRAIT_RESISTLOWPRESSURE, SPECIES_TRAIT)
					ADD_TRAIT(H, TRAIT_RESISTCOLD, SPECIES_TRAIT)
					ADD_TRAIT(H, TRAIT_NODISMEMBER, SPECIES_TRAIT)
					if(apostle_num < 12)
						H.set_light_color(COLOR_VERY_SOFT_YELLOW)
						H.set_light(4)
						H.add_overlay(mutable_appearance('icons/effects/genetics.dmi', "servitude", -MUTATIONS_LAYER))
						var/mutable_appearance/apostle_halo = mutable_appearance('ModularTegustation/Teguicons/32x64.dmi', "halo", -HALO_LAYER)
						H.overlays_standing[HALO_LAYER] = apostle_halo
						H.apply_overlay(HALO_LAYER)
					SLEEP_CHECK_DEATH(20)
					// Executing rupture scenario
					switch(apostle_num)
						if(1)
							apostle_line = "And I tell you, you are [H.real_name] the apostle, and on this rock I will build my church, and the gates of hell shall not prevail against it."
						if(2)
							apostle_line = "Tell us, when will this happen, and what will be the sign of your coming and of the end of the age?"
						if(3)
							apostle_line = "Do you want us to call fire down from heaven to destroy them?"
							apostle_prev = H.real_name
						if(4)
							apostle_line = "[apostle_prev] the apostle and [H.real_name] the apostle, to them he gave the name Boanerges, which means \"sons of thunder\""
						if(5)
							apostle_line = "[H.real_name] the apostle said, \"Show us the Father and that will be enough for us.\""
						if(6)
							apostle_line = "He saw a human named [H.real_name] the apostle. \"Follow me.\" he told him, and [H.real_name] got up and followed him."
						if(7)
							apostle_line = "Now for some time [H.real_name] the apostle had practiced sorcery and amazed all the people."
						if(8)
							apostle_line = "Then [H.real_name] the apostle said to the rest of disciples, \"Let us also go, that we may die with him.\""
						if(9)
							apostle_line = "Then [H.real_name] the apostle declared, \"You are the son of him, you are the king.\""
						if(10)
							apostle_line = "Then [H.real_name] the apostle said, \"But why do you intend to show yourself to us and not to the world?\""
						if(11)
							apostle_line = "From now on, let no one cause me trouble, for I bear on my body the marks of him."
						if(12) //Here we go sicko mode
							apostle_line = "Have I not chosen you, the Twelve? Yet one of you is a devil."
							rapture_skill.Grant(src)
					for(var/mob/M in GLOB.player_list)
						if(M.z == z)
							to_chat(M, "<span class='userdanger'>[apostle_line]</span>")
							SEND_SOUND(M, 'ModularTegustation/Tegusounds/apostle/mob/apostle_bell.ogg')
							flash_color(M, flash_color = "#FF4400", flash_time = 50)
					var/datum/antagonist/apostle/new_apostle = new /datum/antagonist/apostle
					new_apostle.number = apostle_num
					H.mind.add_antag_datum(new_apostle)
					apostle_num += 1
					armour_penetration += 5
					melee_damage_lower += 2
					melee_damage_upper += 3
					maxHealth += 300
					health += 400 // Heals
					holy_revival_damage += 2 // More damage and healing from AOE spell.
					light_range += 1 // More light, because why not.
				else
					playsound(H.loc, 'sound/machines/clockcult/ark_damage.ogg', 50, TRUE, -1)
					H.adjustFireLoss(holy_revival_damage)
					H.emote("scream")
					to_chat(H, "<span class='userdanger'>The holy light... IT BURNS!!</span>")
			else
				if(H.stat == DEAD && H.mind)
					H.set_species(/datum/species/human, 1)
					H.regenerate_limbs()
					H.regenerate_organs()
					H.dna.species.GiveSpeciesFlight(H)
					H.revive(full_heal = TRUE, admin_revive = FALSE)
					H.grab_ghost(force = TRUE)
					to_chat(H, "<span class='notice'>The holy light compels you to live!</span>")
				else
					H.heal_bodypart_damage(holy_revival_damage,holy_revival_damage, 200) // Fully heals stamina damage, instantly.
					H.regenerate_limbs()
					H.regenerate_organs()
					to_chat(H, "<span class='notice'>The holy light heals you!</span>")

/mob/living/simple_animal/hostile/megafauna/apostle/proc/fire_field()
	if(fire_field_cooldown > world.time)
		return
	fire_field_cooldown = (world.time + fire_field_cooldown_base)
	playsound(src, 'sound/machines/clockcult/stargazer_activate.ogg', 250, 1)
	var/fire_zone = spiral_range_turfs(4, get_turf(src))
	for(var/turf/open/T in fire_zone)
		new /obj/effect/temp_visual/cult/turf/floor(T)
	SLEEP_CHECK_DEATH(15)
	for(var/turf/open/T in fire_zone)
		new /obj/effect/temp_visual/cult/turf/floor(T)
		SLEEP_CHECK_DEATH(1)
		explosion(T, -1, -1, 0, -1, 0, flame_range = 1)

/mob/living/simple_animal/hostile/megafauna/apostle/proc/rapture()
	rapture_skill.Remove(src)
	chosen_attack = 1 // To avoid rapture spam
	to_chat(src, "<span class='userdanger'>You begin the final ritual...</span>")
	holy_revival_cooldown_base = 5 SECONDS
	fire_field_cooldown_base = 10 SECONDS
	for(var/mob/M in GLOB.player_list)
		if(M.z == z)
			SEND_SOUND(M, 'ModularTegustation/Tegusounds/apostle/antagonist/rapture.ogg')
	SLEEP_CHECK_DEATH(30)
	for(var/datum/antagonist/apostle/A in GLOB.apostles)
		if(!A.owner || !ishuman(A.owner.current))
			continue
		var/mob/living/carbon/H = A.owner.current
		A.rapture()
		H.revive(full_heal = TRUE, admin_revive = FALSE)
		H.grab_ghost(force = TRUE)
		shake_camera(H, 1, 1)
		if(A.number < 12)
			var/turf/main_loc = get_step(src, pick(0,1,2,4,5,6,8,9,10))
			SLEEP_CHECK_DEATH(3)
			new /obj/effect/temp_visual/cult/blood(get_turf(H))
			SLEEP_CHECK_DEATH(20)
			new /obj/effect/temp_visual/cult/blood/out(get_turf(H))
			new /obj/effect/temp_visual/cult/blood(main_loc)
			SLEEP_CHECK_DEATH(3)
			H.forceMove(main_loc)
		if(A.number == 12)
			SLEEP_CHECK_DEATH(30)
		for(var/mob/M in GLOB.player_list)
			if(M.z == z)
				var/mod = "st"
				switch(A.number)
					if(1)
						mod = "st"
					if(2)
						mod = "nd"
					if(3)
						mod = "rd"
					else
						mod = "th"
				to_chat(M, "<span class='userdanger'>[H.real_name], the [A.number][mod]...</span>")
				SEND_SOUND(M, 'ModularTegustation/Tegusounds/apostle/mob/apostle_bell.ogg')
				flash_color(M, flash_color = "#FF4400", flash_time = 50)
		SLEEP_CHECK_DEATH(60)
	SSshuttle.emergency.request(null, set_coefficient = 1) // People still can recall, if they think they can kill it.
	SLEEP_CHECK_DEATH(300)
	add_filter("apostle", 1, drop_shadow_filter(color = "#FFFF00BA", size = 32))
	for(var/mob/M in GLOB.player_list)
		if(M.z == z)
			SEND_SOUND(M, 'ModularTegustation/Tegusounds/apostle/antagonist/rapture2.ogg')
