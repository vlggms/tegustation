/datum/antagonist/apostle
	name = "Apostle"
	roundend_category = "apostles"
	antagpanel_category = "Apostle"
	job_rank = "Apostle"
	antag_hud_type = ANTAG_HUD_SHADOW
	antag_hud_name = "shadowling"
	antag_moodlet = /datum/mood_event/focused
	var/number = 1 // Number of apostle, obviously. Used for finale
	show_to_ghosts = TRUE

/datum/antagonist/apostle/New()
	. = ..()
	GLOB.apostles += src

/datum/antagonist/apostle/on_gain()
	. = ..()

/datum/antagonist/apostle/apply_innate_effects(mob/living/mob_override)
	var/mob/living/M = mob_override || owner.current
	add_antag_hud(antag_hud_type, antag_hud_name, M)
	handle_clown_mutation(M, mob_override ? null : "The holy light grants you supreme power, allowing you to wield weapons once again.")

/datum/antagonist/apostle/remove_innate_effects(mob/living/mob_override)
	var/mob/living/M = mob_override || owner.current
	remove_antag_hud(antag_hud_type, M)
	handle_clown_mutation(M, removing = FALSE)

/datum/antagonist/apostle/proc/rapture()
	var/mob/living/carbon/human/H = owner.current
	var/obj/item/wep_type
	switch(number)
		if(1, 11) // Guardian
			H.equipOutfit(/datum/outfit/apostle)
		if(2, 3) // Scythe
			H.equipOutfit(/datum/outfit/apostle)
			wep_type = /obj/item/nullrod/scythe/apostle
		if(4, 5, 6) // Staff
			H.equipOutfit(/datum/outfit/apostle)
			wep_type = /obj/item/gun/magic/staff/apostle
		if(7, 8, 9, 10) // Spear
			H.equipOutfit(/datum/outfit/apostle)
			wep_type = /obj/item/nullrod/spear/apostle
		if(12) // Heretic
			H.dropItemToGround(H.wear_mask)
			H.equipOutfit(/datum/outfit/apostle_heretic)
	if(wep_type)
		var/obj/item/held = H.get_active_held_item()
		var/obj/item/wep = new wep_type(H, silent)
		H.dropItemToGround(held) // First - drop current item.
		H.put_in_hands(wep) // Then put an epic one.

/datum/antagonist/apostle/proc/prophet_death()
	var/mob/living/carbon/human/H = owner.current
	var/turf/T = get_turf(H)
	to_chat(H, "<span class='userdanger'>The prophet is dead...</span>")
	H.visible_message("<span class='danger'>[H.real_name] briefly looks above, then falls silent...</span>", "<span class='userdanger'>You see the light above...</span>")
	playsound(H, 'sound/tegu_sounds/mob/apostle_death_final.ogg', 200, TRUE, TRUE)
	H.emote("scream")
	H.Immobilize(30)
	new /obj/effect/temp_visual/cult/sparks(T)
	sleep(25)
	for(var/obj/item/W in H)
		if(!H.dropItemToGround(W))
			qdel(W)
	H.dust()
