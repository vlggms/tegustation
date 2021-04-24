/mob/living/simple_animal/hostile/megafauna/claw
	name = "Claw"
	desc = "A strange humanoid creature with several gadgets attached to it."
	health = 4000
	maxHealth = 4000
	attack_verb_continuous = "slices"
	attack_verb_simple = "slice"
	attack_sound = 'ModularTegustation/Tegusounds/claw/attack.ogg'
	icon_state = "claw"
	icon_living = "claw"
	icon = 'ModularTegustation/Teguicons/tegumobs.dmi'
	health_doll_icon = "miner"
	mob_biotypes = MOB_ORGANIC|MOB_HUMANOID
	light_color = COLOR_LIGHT_GRAYISH_RED
	light_range = 5
	movement_type = GROUND
	speak_emote = list("says")
	armour_penetration = 40
	melee_damage_lower = 20
	melee_damage_upper = 20
	ranged = TRUE
	speed = 4
	move_to_delay = 4
	pixel_x = 0
	base_pixel_x = 0
	crusher_loot = list(/obj/item/card/id/ert/deathsquad, /obj/item/documents/nanotrasen)
	loot = list(/obj/item/card/id/ert/deathsquad, /obj/item/documents/nanotrasen)
	wander = FALSE
	del_on_death = TRUE
	blood_volume = BLOOD_VOLUME_NORMAL
	gps_name = "NTAF-V"
	deathmessage = "falls to the ground, decaying into glowing particles."
	deathsound = "bodyfall"
	footstep_type = FOOTSTEP_MOB_HEAVY
	attack_action_types = list(/datum/action/innate/megafauna_attack/ultimatum,
							   /datum/action/innate/megafauna_attack/swift_dash)
	var/ultimatum_cooldown = 0
	var/ultimatum_cooldown_time = 60 SECONDS
	var/charging = FALSE
	var/dash_num = 16
	var/dash_cooldown = 0
	var/dash_cooldown_time = 20 SECONDS

/datum/action/innate/megafauna_attack/ultimatum
	name = "Ultimatum"
	icon_icon = 'icons/effects/effects.dmi'
	button_icon_state = "rift"
	chosen_message = "<span class='colossus'>You will now jump to random targets on the station.</span>"
	chosen_attack_num = 1

/datum/action/innate/megafauna_attack/swift_dash
	name = "Swift Dash"
	icon_icon = 'icons/obj/rune.dmi'
	button_icon_state = "4"
	chosen_message = "<span class='colossus'>You will now dash forward for a long distance.</span>"
	chosen_attack_num = 2

/obj/effect/target_field
	name = "target field"
	desc = "You have a bad feeling about this..."
	icon = 'ModularTegustation/Teguicons/tegu_effects.dmi'
	icon_state = "target_field"

/mob/living/simple_animal/hostile/megafauna/claw/Initialize()
	. = ..()
	ADD_TRAIT(src, TRAIT_NO_FLOATING_ANIM, ROUNDSTART_TRAIT) // Imagine floating.

/mob/living/simple_animal/hostile/megafauna/claw/OpenFire()
	if(client)
		switch(chosen_attack)
			if(1)
				ultimatum(target)
			if(2)
				swift_dash(target)
		return

	Goto(target, move_to_delay, minimum_distance)
	if(get_dist(src, target) >= 3 && dash_cooldown <= world.time && !charging)
		swift_dash(target)
	if(get_dist(src, target) > 5 && ultimatum_cooldown <= world.time && !charging)
		ultimatum()

/mob/living/simple_animal/hostile/megafauna/claw/Move()
	if(charging)
		return FALSE
	return ..()

/mob/living/simple_animal/hostile/megafauna/claw/proc/ultimatum()
	if(ultimatum_cooldown > world.time)
		return
	ultimatum_cooldown = world.time + ultimatum_cooldown_time
	var/list/mob/living/carbon/human/death_candidates = list()
	for(var/mob/living/carbon/human/maybe_victim in GLOB.human_list) //player_list
		if(maybe_victim.loc.AllowClick()&& (maybe_victim.stat != DEAD) && maybe_victim.z == z)
			death_candidates += maybe_victim
	var/mob/living/carbon/human/H = null
	if(!death_candidates.len) // If there is 0 candidates - stop the spell.
		to_chat(src, "<span class='notice'>There is no more human survivors on the station. Mission accomplished.</span>")
		return
	for(var/i in 1 to 5)
		if(!death_candidates.len) // No more candidates left? Let's stop picking through the list.
			break
		H = pick(death_candidates)
		addtimer(CALLBACK(src, .proc/eviscerate, H), i*5)
		death_candidates.Remove(H)

/mob/living/simple_animal/hostile/megafauna/claw/proc/eviscerate(mob/living/carbon/human/target)
	var/obj/effect/target_field/uhoh = new /obj/effect/target_field(target.loc)
	uhoh.orbit(target, 0)
	playsound(target, 'ModularTegustation/Tegusounds/claw/eviscerate1.ogg', 100, 1)
	playsound(src, 'ModularTegustation/Tegusounds/claw/eviscerate1.ogg', 1, 1)
	to_chat(target, "<span class='danger'>The [src] is going to hunt you down!</span>")
	addtimer(CALLBACK(src, .proc/eviscerate2, target, uhoh), 20)

/mob/living/simple_animal/hostile/megafauna/claw/proc/eviscerate2(mob/living/carbon/human/target, obj/effect/eff)
	if(prob(2) || target.z != z || !target.loc.AllowClick() || !target) // Be happy, mortal. Did you just hide in a locker?
		to_chat(src, "<span class='notice'>Your teleportation device malfunctions!</span>")
		to_chat(target, "<span class='notice'>It seems you are safe. For now...</span>")
		playsound(src.loc, 'ModularTegustation/Tegusounds/claw/error.ogg', 50, 1)
		qdel(eff)
		return
	visible_message("<span class='warning'>[src] blinks away!</span>")
	new /obj/effect/temp_visual/small_smoke/halfsecond(src.loc)
	forceMove(target.loc)
	qdel(eff)
	playsound(target, 'ModularTegustation/Tegusounds/claw/eviscerate2.ogg', 100, 1)
	visible_message("<span class='danger'>The [src] slices through [target]!</span>")
	target.adjustBruteLoss(30)
	new /obj/effect/temp_visual/cleave(target.loc)

/mob/living/simple_animal/hostile/megafauna/claw/proc/swift_dash(target)
	if(dash_cooldown > world.time)
		return
	dash_cooldown = world.time + dash_cooldown_time
	charging = TRUE
	var/dir_to_target = get_dir(get_turf(src), get_turf(target))
	var/turf/T = get_step(get_turf(src), dir_to_target)
	for(var/i in 1 to dash_num)
		new /obj/effect/temp_visual/cult/sparks(T)
		T = get_step(T, dir_to_target)
	addtimer(CALLBACK(src, .proc/swift_dash2, dir_to_target, 0), 15)
	playsound(src, 'ModularTegustation/Tegusounds/claw/prepare.ogg', 100, 1)

/mob/living/simple_animal/hostile/megafauna/claw/proc/swift_dash2(move_dir, times_ran)
	if(times_ran > dash_num)
		charging = FALSE
		return
	var/turf/T = get_step(get_turf(src), move_dir)
	new /obj/effect/temp_visual/small_smoke/halfsecond(T)
	forceMove(T)
	playsound(src,'ModularTegustation/Tegusounds/claw/move.ogg', 50, 1)
	for(var/mob/living/L in T.contents - src)
		L.adjustBruteLoss(10)
		L.Knockdown(20)
		L.attack_animal(src)
		new /obj/effect/temp_visual/cleave(L.loc)
	addtimer(CALLBACK(src, .proc/swift_dash2, move_dir, (times_ran + 1)), 0.8)
