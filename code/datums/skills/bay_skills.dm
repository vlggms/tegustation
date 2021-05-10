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
	chemistry = 2 // This allows them to use machines in kitchen/botany.
	culinary = 3

/datum/skill_list_bay/culinary/cook
	name = "Cooking Professional"
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

// CentCom
/datum/skill_list_bay/centcom
	name = "CentCom Official"
	cqc = 2
	melee_weapons = 2
	engineering = 2

/datum/skill_list_bay/centcom/security
	name = "CentCom Officer"
	cqc = 4
	melee_weapons = 4

/datum/skill_list_bay/centcom/security/commander
	name = "CentCom Commander"
	engineering = 4
	surgery = 4

/datum/skill_list_bay/centcom/engineer
	name = "CentCom Engineer"
	engineering = 6

/datum/skill_list_bay/centcom/medical
	name = "CentCom Medic"
	chemistry = 5
	surgery = 6

/datum/skill_list_bay/centcom/commando
	name = "Death Commando"
	cqc = 6
	melee_weapons = 6
	engineering = 6
	chemistry = 6
	surgery = 6

/* ANTAGONISTS */
// Syndicate
/datum/skill_list_bay/syndi
	name = "Syndicate Operative"
	cqc = 3
	melee_weapons = 3
	engineering = 3
	chemistry = 2
	surgery = 2

/datum/skill_list_bay/syndi/engineer
	name = "Syndicate Engineer"
	engineering = 5

/datum/skill_list_bay/syndi/medic
	name = "Syndicate Medic"
	chemistry = 4
	surgery = 5

/datum/skill_list_bay/syndi/master
	name = "Syndicate Master"
	cqc = 4
	melee_weapons = 4
	engineering = 4
	chemistry = 3
	surgery = 3

// Abductors
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
	name = "Solo Abductor Agent"
	cqc = 3
	melee_weapons = 3

/* Ghost Roles */
// Ashwalkers
/datum/skill_list_bay/ashwalker
	name = "Ashwalker"
	cqc = 1
	melee_weapons = 2
	engineering = 1
	surgery = 1

// Podpeople
/datum/skill_list_bay/culinary/pod
	name = "Podperson"
	engineering = 2

// Golems
/datum/skill_list_bay/golem
	name = "Golem"
	melee_weapons = 1
	engineering = 2
	chemistry = 2

/datum/skill_list_bay/golem/free
	name = "Free Golem"
	surgery = 2
	culinary = 2

/* Admemery */
// Everything at 10
/datum/skill_list_bay/admin
	name = "Admin"
	cqc = 10
	melee_weapons = 10
	engineering = 10
	chemistry = 10
	surgery = 10
	culinary = 10
