// Virology "advanced" symptoms.
/datum/symptom/adv_transmit
	name = "TCS-TSA 1" // Tiger Co Syndicate - Transmission Speed Accelerant
	desc = "Some sort of a dark, rapidly developing bacteria; Although it makes presence of the virus very obvious, \
	it rapidly transmits and evolves to the last stages almost instantly, possibly killing everything in the process."
	stealth = -9
	resistance = -5
	stage_speed = 7
	transmittable = 5
	level = 19 // Can't get it normally

/datum/symptom/adv_everything
	name = "TCS-MPA 2" // Tiger Co Syndicate - Multi-Purpose Accelerant
	desc = "A multi-purpose strain, capable of increasing most statistics of a virus by a small amount."
	stealth = 2
	resistance = 4
	stage_speed = 4
	transmittable = 3
	level = 19

/datum/symptom/adv_stealth
	name = "TCS-SRA 3" // Tiger Co Syndicate - Stealth Resistance Accelerant
	desc = "A rare symptom, previously unknown to Nanotrasen. \
	This symptom makes virus near to impossible to spot, although hinders its ability to develop fast enough."
	stealth = 7
	resistance = 5
	stage_speed = -9
	transmittable = -3
	level = 19

/datum/symptom/fake_oxygen // Fake self-respiration, heals until stage 5, then begins to kill.
	name = "Self-Respiratory Detonator"
	desc = "Virus that resembles Self-Respiration symptom, up until the last stage where it begins to absord oxygen in victim's body."
	stealth = 1
	resistance = -3
	stage_speed = -3
	transmittable = -4
	level = 19
	severity = 0
	base_message_chance = 5
	symptom_delay_min = 2
	symptom_delay_max = 3
	var/regenerate_blood = FALSE
	threshold_descs = list(
		"Resistance 8" = "Regenerates blood. At the last stage it will ignore body safety thresholds."
	)

/datum/symptom/fake_oxygen/Start(datum/disease/advance/A)
	if(!..())
		return
	if(A.properties["resistance"] >= 8) //blood "regeneration"
		regenerate_blood = TRUE

/datum/symptom/fake_oxygen/Activate(datum/disease/advance/A)
	if(!..())
		return
	var/mob/living/carbon/M = A.affected_mob
	switch(A.stage)
		if(5)
			M.adjustOxyLoss(5, 0)
			if(prob(20))
				M.losebreath += 2
				M.emote("gasp")
			if(prob(base_message_chance))
				to_chat(M, "<span class='userwarning'>[pick("You feel a dull pain in your chest.", "You try to breathe, but can't inhale air!", "Your lungs feel empty!")]</span>")
			if(regenerate_blood && M.blood_volume < BLOOD_VOLUME_MAX_LETHAL) // It won't really kill you, but you will feel bad.
				M.blood_volume += 2
		if(3, 4)
			M.adjustOxyLoss(-7, 0)
			M.losebreath = max(0, M.losebreath - 4)
			if(regenerate_blood && M.blood_volume < BLOOD_VOLUME_NORMAL)
				M.blood_volume += 1
		if(1, 2)
			if(prob(base_message_chance))
				to_chat(M, "<span class='notice'>[pick("Your lungs feel great.", "You realize you haven't been breathing.", "You don't feel the need to breathe.")]</span>")
	return

/datum/symptom/fake_oxygen/on_stage_change(datum/disease/advance/A)
	if(!..())
		return FALSE
	var/mob/living/carbon/M = A.affected_mob
	if(A.stage >= 3 && A.stage < 5) // Third and fourth stage.
		ADD_TRAIT(M, TRAIT_NOBREATH, DISEASE_TRAIT)
	else
		REMOVE_TRAIT(M, TRAIT_NOBREATH, DISEASE_TRAIT)
	return TRUE

/datum/symptom/fake_oxygen/End(datum/disease/advance/A)
	if(!..())
		return
	REMOVE_TRAIT(A.affected_mob, TRAIT_NOBREATH, DISEASE_TRAIT)


// "Diseases" for bottles.
//TS
/datum/disease/advance/adv_ts
	copy_type = /datum/disease/advance

/datum/disease/advance/adv_ts/New()
	symptoms = list(new/datum/symptom/adv_transmit)
	..()

//MP
/datum/disease/advance/adv_mp
	copy_type = /datum/disease/advance

/datum/disease/advance/adv_mp/New()
	symptoms = list(new/datum/symptom/adv_everything)
	..()

//SR
/datum/disease/advance/adv_sr
	copy_type = /datum/disease/advance

/datum/disease/advance/adv_sr/New()
	symptoms = list(new/datum/symptom/adv_stealth)
	..()

/datum/disease/advance/fake_oxygen
	copy_type = /datum/disease/advance

/datum/disease/advance/fake_oxygen/New()
	symptoms = list(new/datum/symptom/fake_oxygen)
	..()
