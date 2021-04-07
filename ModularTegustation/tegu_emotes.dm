/datum/emote/living/carbon/human
	mob_type_allowed_typecache = list(/mob/living/carbon/human)

/datum/emote/living/carbon/human/fart
	key = "fart"
	key_third_person = "farts"
	message = "farts"
	emote_type = EMOTE_AUDIBLE
	vary = TRUE

/datum/emote/living/carbon/human/fart/get_sound(mob/living/user)
	if(!ishuman(user))
		return
	return 'sound/misc/fart1.ogg'
