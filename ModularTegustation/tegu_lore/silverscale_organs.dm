//REMOVE THIS FILE ONCE https://github.com/tgstation/tgstation/pull/56264 IS PORTED

//SILVERSCALE SUBSPECIES
/*
Lizard subspecies: SILVER SCALED
*/
/datum/species/lizard/silverscale
	name = "Silver Scale"
	id = "silverlizard"
	limbs_id = "lizard"
	inherent_biotypes = MOB_ORGANIC|MOB_HUMANOID|MOB_REPTILE
	inherent_traits = list(TRAIT_ADVANCEDTOOLUSER,TRAIT_HOLY,TRAIT_NOBREATH,TRAIT_VIRUSIMMUNE,TRAIT_WINE_TASTER)
	species_language_holder = /datum/language_holder/lizard/silver
	mutanttongue = /obj/item/organ/tongue/lizard/silver
	armor = 10 //very light silvery scales soften blows
	changesource_flags = MIRROR_BADMIN | MIRROR_MAGIC | RACE_SWAP | ERT_SPAWN
	///stored mutcolor for when we turn back off of a silverscale.
	var/old_mutcolor
	///stored eye color for when we turn back off of a silverscale.
	var/old_eyecolor

/datum/species/lizard/silverscale/on_species_gain(mob/living/carbon/C, datum/species/old_species)
	var/mob/living/carbon/human/new_silverscale = C
	old_mutcolor = C.dna.features["mcolor"]
	old_eyecolor = new_silverscale.eye_color
	new_silverscale.dna.features["mcolor"] = "eeeeee"
	new_silverscale.eye_color = "0000a0"
	..()
	new_silverscale.add_filter("silver_glint", 2, list("type" = "outline", "color" = "#ffffff63", "size" = 2))

/datum/species/lizard/silverscale/on_species_loss(mob/living/carbon/C)
	var/mob/living/carbon/human/was_silverscale = C
	was_silverscale.dna.features["mcolor"] = old_mutcolor
	was_silverscale.eye_color = old_eyecolor

	was_silverscale.remove_filter("silver_glint")
	..()
//SILVER TOUNGE ORGAN
/obj/item/organ/tongue/lizard/silver
	name = "silver tongue"
	desc = "A genetic branch of the high society Silver Scales that gives them their silverizing properties. To them, it is everything, and society traitors have their tongue forcibly revoked. Oddly enough, it itself is just blue."
	icon_state = "silvertongue"
	actions_types = list(/datum/action/item_action/organ_action/statue)

/datum/action/item_action/organ_action/statue
	name = "Become Statue"
	desc = "Become an elegant silver statue. Its durability and yours are directly tied together, so make sure you're careful."
	COOLDOWN_DECLARE(ability_cooldown)

	var/obj/structure/statue/custom/statue

/datum/action/item_action/organ_action/statue/New(Target)
	. = ..()
	statue = new
	RegisterSignal(statue, COMSIG_PARENT_QDELETING, .proc/statue_destroyed)

/datum/action/item_action/organ_action/statue/Destroy()
	UnregisterSignal(statue, COMSIG_PARENT_QDELETING)
	QDEL_NULL(statue)
	. = ..()

/datum/action/item_action/organ_action/statue/Trigger()
	. = ..()
	if(!iscarbon(owner))
		to_chat(owner, "<span class='warning'>Your body rejects the powers of the tongue!</span>")
		return
	var/mob/living/carbon/becoming_statue = owner
	if(becoming_statue.health < 1)
		to_chat(becoming_statue, "<span class='danger'>You are too weak to become a statue!</span>")
		return
	if(!COOLDOWN_FINISHED(src, ability_cooldown))
		to_chat(becoming_statue, "<span class='warning'>You just used the ability, wait a little bit!</span>")
		return
	var/is_statue = becoming_statue.loc == statue
	to_chat(becoming_statue, "<span class='notice'>You begin to [is_statue ? "break free from the statue" : "make a glorious pose as you become a statue"]!</span>")
	if(!do_after(becoming_statue, (is_statue ? 5 : 30), target = get_turf(becoming_statue)))
		to_chat(becoming_statue, "<span class='warning'>Your transformation is interrupted!</span>")
		COOLDOWN_START(src, ability_cooldown, 3 SECONDS)
		return
	COOLDOWN_START(src, ability_cooldown, 10 SECONDS)

	if(statue.name == initial(statue.name)) //statue has not been set up
		statue.name = "statue of [becoming_statue.real_name]"
		statue.desc = "statue depicting [becoming_statue.real_name]"
		statue.set_custom_materials(list(/datum/material/silver=MINERAL_MATERIAL_AMOUNT*5))
	if(is_statue)
		statue.visible_message("<span class='danger'>[statue] becomes animated!</span>")
		becoming_statue.forceMove(get_turf(statue))
		statue.moveToNullspace()
		UnregisterSignal(becoming_statue, COMSIG_MOVABLE_MOVED)
	else
		becoming_statue.visible_message("<span class='notice'>[becoming_statue] hardens into a silver statue.</span>", "<span class='notice'>You have become a silver statue!</span>")
		statue.set_visuals(becoming_statue.appearance)
		statue.forceMove(get_turf(becoming_statue))
		becoming_statue.forceMove(statue)
		statue.obj_integrity = becoming_statue.health
		RegisterSignal(becoming_statue, COMSIG_MOVABLE_MOVED, .proc/human_left_statue)

	//somehow they used an exploit/teleportation to leave statue, lets clean up
/datum/action/item_action/organ_action/statue/proc/human_left_statue(atom/movable/mover, atom/oldloc, direction)
	SIGNAL_HANDLER

	statue.moveToNullspace()
	UnregisterSignal(mover, COMSIG_MOVABLE_MOVED)

/datum/action/item_action/organ_action/statue/proc/statue_destroyed(datum/source)
	to_chat(owner, "<span class='userdanger'>Your existence as a living creature snaps as your statue form crumbles!</span>")
	if(iscarbon(owner))
		//drop everything, just in case
		var/mob/living/carbon/dying_carbon = owner
		for(var/obj/item/dropped in dying_carbon)
			if(!dying_carbon.dropItemToGround(dropped))
				qdel(dropped)
	qdel(owner)
