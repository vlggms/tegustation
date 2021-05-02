/datum/skill_list_bay
	var/name = "Default"
	var/cqc = 0
	var/melee_weapons = 0
	var/engineering = 0
	var/surgery = 0
	var/culinary = 0

/datum/skill_list_bay/proc/getRating(rating)
	return vars[rating]

/datum/skill_list_bay/proc/getList()
	return list("cqc" = cqc,\
		"melee_weapons" = melee_weapons,\
		"engineering" = engineering,\
		"surgery" = surgery,\
		"culinary" = culinary)

/datum/skill_list_bay/assistant
	name = "Assistant"
	engineering = 2

/datum/skill_list_bay/engineer
	name = "Engineer"
	engineering = 4

/datum/skill_list_bay/engineer/ce
	name = "Chief Engineer"
	engineering = 8

/datum/skill_list_bay/medical
	name = "Medical"
	surgery = 4

/datum/skill_list_bay/medical/prof
	name = "Medical Professional"
	surgery = 6

/datum/skill_list_bay/medical/cmo
	name = "Chief Medical Officer"
	surgery = 8

/datum/skill_list_bay/science
	name = "Medical"
	engineering = 3

/datum/skill_list_bay/science/robo
	name = "Medical Professional"
	surgery = 4

/datum/skill_list_bay/science/rd
	name = "Research Director"
	cqc = 2
	engineering = 4

/datum/skill_list_bay/culinary
	name = "Cooking"
	culinary = 4

/datum/skill_list_bay/culinary/cook
	name = "Cooking"
	cqc = 2
	culinary = 6

/datum/skill_list_bay/security
	name = "Security"
	cqc = 2
	melee_weapons = 2
	engineering = 2

/datum/skill_list_bay/security/hos
	name = "Head of Security"
	cqc = 4
	melee_weapons = 4

/datum/skill_list_bay/captain
	name = "Command"
	cqc = 2
	melee_weapons = 2
	engineering = 2
	surgery = 2
	culinary = 4

/datum/skill_list_bay/syndi
	name = "Syndicate Operative"
	cqc = 2
	melee_weapons = 2
	engineering = 4
	surgery = 2

/datum/skill_list_bay/syndi/engineer
	name = "Syndicate Engineer"
	engineering = 6
