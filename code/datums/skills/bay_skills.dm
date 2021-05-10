/datum/skill_list_bay
	var/name = "Default"
	var/cqc = 0
	var/melee_weapons = 0
	var/engineering = 0
	var/chemistry = 0
	var/surgery = 0
	var/culinary = 0

/datum/skill_list_bay/proc/getRating(rating)
	var/list/skill_list = getList()
	return skill_list[rating]

/datum/skill_list_bay/proc/getList()
	return list("cqc" = cqc,\
		"melee_weapons" = melee_weapons,\
		"engineering" = engineering,\
		"chemistry" = chemistry,\
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
	engineering = 6

/datum/skill_list_bay/medical
	name = "Medical"
	surgery = 2
	chemistry = 2 // This allows them to use chemical machines.

/datum/skill_list_bay/medical/viro
	name = "Virologist"
	chemistry = 3

/datum/skill_list_bay/medical/chem
	name = "Chemist"
	chemistry = 4

/datum/skill_list_bay/medical/prof
	name = "Medical Professional"
	surgery = 4

/datum/skill_list_bay/medical/cmo
	name = "Chief Medical Officer"
	surgery = 6

/datum/skill_list_bay/science
	name = "Medical"
	engineering = 3

/datum/skill_list_bay/science/robo
	name = "Medical Professional"
	surgery = 3

/datum/skill_list_bay/science/rd
	name = "Research Director"
	cqc = 2
	engineering = 4

/datum/skill_list_bay/culinary
	name = "Cooking"
	culinary = 3

/datum/skill_list_bay/culinary/cook
	name = "Cooking"
	cqc = 2
	culinary = 4

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
	culinary = 2

/datum/skill_list_bay/syndi
	name = "Syndicate Operative"
	cqc = 3
	melee_weapons = 3
	engineering = 4
	chemistry = 2
	surgery = 2

/datum/skill_list_bay/syndi/engineer
	name = "Syndicate Engineer"
	engineering = 5

/datum/skill_list_bay/abductor
	name = "Abductor"
	engineering = 6
	chemistry = 6
	surgery = 6

/datum/skill_list_bay/abductor/agent
	name = "Abductor Agent"
	cqc = 3
	melee_weapons = 3
	chemistry = 2
	surgery = 2

/datum/skill_list_bay/abductor/solo
	abductor = "Solo Abductor Agent"
	cqc = 3
	melee_weapons = 3

/datum/skill_list_bay/ashwalker
	name = "Ashwalker"
	cqc = 1
	melee_weapons = 2
	engineering = 1
	surgery = 1

/datum/skill_list_bay/admin
	name = "Admin"
	cqc = 10
	melee_weapons = 10
	engineering = 10
	chemistry = 10
	surgery = 10
	culinary = 10
