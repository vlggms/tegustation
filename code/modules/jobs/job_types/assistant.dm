/*
Assistant
*/
/datum/job/assistant
	title = "Cadet"
	faction = "Station"
	total_positions = 5
	spawn_positions = 5
	supervisors = "absolutely everyone"
	selection_color = "#3967a3"
	access = list()			//See /datum/job/assistant/get_access()
	minimal_access = list()	//See /datum/job/assistant/get_access()
	outfit = /datum/outfit/job/assistant
	antag_rep = 7
	paycheck = PAYCHECK_ASSISTANT // Get a job. Job reassignment changes your paycheck now. Get over it.

	liver_traits = list(TRAIT_GREYTIDE_METABOLISM)

	paycheck_department = ACCOUNT_CIV
	display_order = JOB_DISPLAY_ORDER_ASSISTANT

	skills_type = /datum/skill_list_bay/assistant

/datum/job/assistant/get_access()
	if(CONFIG_GET(flag/assistants_have_maint_access) || !CONFIG_GET(flag/jobs_have_minimal_access)) //Config has assistant maint access set
		. = ..()
		. |= list(ACCESS_MAINT_TUNNELS)
	else
		return ..()

/datum/outfit/job/assistant
	name = "Cadet"
	jobtype = /datum/job/assistant


/datum/outfit/job/assistant/pre_equip(mob/living/carbon/human/target)
	..() //stolen from /tg/ code thanks suckers
	give_jumpsuit(target)

/datum/outfit/job/assistant/proc/give_jumpsuit(mob/living/carbon/human/target)
	var/static/jumpsuit_number = 0
	jumpsuit_number += 1

/datum/outfit/job/assistant/give_jumpsuit(mob/living/carbon/human/target)
	uniform = /obj/item/clothing/under/color/cadet

//mwahahahaha no jumpskirt for you