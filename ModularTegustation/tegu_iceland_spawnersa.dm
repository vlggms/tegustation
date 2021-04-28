//kc13 ghost spawner
/obj/effect/mob_spawn/human/kc13
	name = "ancient sleepr"
	desc = "An ancient sleeper in cyrostasis mode. A humanoid entity apears inside, or at least it looks human."
	mob_name = "kc13 crewmember"
	icon = 'icons/obj/machines/sleeper.dmi'
	icon_state = "sleeper"
	density = TRUE
	roundstart = FALSE
	death = FALSE
	mob_species = /datum/species/beefman
	outfit = /datum/outfit/russiancorpse/officer/kc13
	short_desc = "You are a survivor of a horrific crash of a ancient space station: Space Station 13."
	flavour_text = "You worked for the third soviet union on a secret plasma research facility. \
	However, a secret agent from a unknown organization somehow deorbited the station. You were severly capacitated and \
	were forced to rest in a sleeper where the crew was doing genetic experiments. \
	However, before going in the sleeper, you reactivated the drones on a timer, but you can't remember what the timer was..."
	important_info = "Your job isn't to repair the station, as that's the drone's job and might even hinder them. \
	Your job is to protect the drones as their laws don't allow them to defend themselves from the monster on this moon."
	assignedrole = "KC13 Crewmember"
	
/obj/effect/mob_spawn/human/kc13/special(mob/living/new_spawn)
	var/soviet_name = pick("Aleks", "Motya", " Vanna", "Sasha", "Shura", "Sanya", "Zhenya", "Annushka", "Oleksiy", "Makar", "Mariyam", "Oktawiusz", "Benedykta", "Mykolas", "Maksimilian", "Lukas", "Yuri", \
	"Valentina", "Tymoteusz", "Viktor", "Gagarin", "Aleksandr", "Vladimir", "Boris", "Alexei")
	new_spawn.fully_replace_character_name(null,soviet_name)
	if(ishuman(new_spawn))
		var/mob/living/carbon/human/H = new_spawn
		H.underwear = "Nude" 
		H.update_body()
		H.remove_language(/datum/language/common)

/datum/outfit/russiancorpse/officer/kc13
	name = "KC13 Officer"
	uniform = /obj/item/clothing/under/costume/russian_officer
	suit = /obj/item/clothing/suit/security/officer/russian
	shoes = /obj/item/clothing/shoes/combat
	head = /obj/item/clothing/head/ushanka		
	gloves = /obj/item/clothing/gloves/tackler/combat
	id = /obj/item/card/id/away/old/kc13
	belt = /obj/item/storage/belt/utility/full
	r_pocket = /obj/item/tank/internals/emergency_oxygen/double
	l_pocket = /obj/item/gun/ballistic/automatic/pistol
	back = /obj/item/storage/backpack
	backpack_contents = list(/obj/item/storage/box/survival=1,\
		/obj/item/pickaxe/mini=1,\
		/obj/item/gun/energy/kinetic_accelerator)


/obj/item/card/id/away/old/kc13
	name = "KC13 crew member's ID card"
	desc = "A faded ID card. You can make out the rank \"Commanding Officer\"."
	assignment = "SS13 Officer"
	access = list(ACCESS_AWAY_GENERAL, 12, 5, 7, 10, 11, 24, 18, 8, 9, 6, 4, 23, 1, 18)

//nt miner.
/obj/effect/mob_spawn/human/ntminer
	name = "cryostasis sleeper"
	desc = "A humming sleeper with a silhouetted occupant inside."
	mob_name = "shaft miner"
	icon = 'icons/obj/lavaland/spawners.dmi'
	icon_state = "cryostasis_sleeper"
	outfit = /datum/outfit/job/miner
	roundstart = FALSE
	death = FALSE
	random = TRUE
	mob_species = /datum/species/human
	short_desc = "You are a shaft miner hired and working for nanotrasen."
	flavour_text = "You are employed by Nanotrasen to mine plasma on Icemmoon, but it seems you wandered \
	a bit off from your designated mining zone. Luckly, you had a mining capsule ready to go.  \
	Its going to take a while to get back... so might as well mine this mineral rich, yet dangerous area."
	assignedrole = "Shaft Miner"
	
//tcomm officer
/obj/effect/mob_spawn/human/tcommsat
	name = "ancient sleepr"
	desc = "An ancient sleeper in cyrostasis mode. The sleeper is attempting to wake up the occupant."
	mob_name = "tcommunication officer"
	icon = 'icons/obj/machines/sleeper.dmi'
	icon_state = "sleeper"
	density = TRUE
	roundstart = FALSE
	death = FALSE
	mob_species = /datum/species/beefman
	outfit = /datum/outfit/tcomms
	short_desc = "You are a engineer onboard a telecommunication relay."
	flavour_text = "You worked for NASA in colabration with Nanotrasen for many years with no issues. \
	However a severe bombing from a unknown group has forced you into a sleeper before you could succumb \
	to your wounds. \
	You aren't sure how many year it's been since the disaster, but you get the sinking feeling that \
	it's a whole diffrent world out there... and are you on a snow planet?"
	important_info = "You should get the telecommunications equipment back up to see if you can contact anyone."
	assignedrole = "Telecommunications officer"
	
/datum/outfit/tcomms
	name = "Telecommunications Officer"
	uniform = /obj/item/clothing/under/rank/engineering/engineer
	shoes = /obj/item/clothing/shoes/workboots
	head = /obj/item/clothing/head/hardhat
	r_pocket = /obj/item/t_scanner
	r_hand = /obj/item/crowbar
	suit = /obj/item/clothing/suit/hooded/wintercoat/engineering
	back = /obj/item/storage/backpack/industrial
	skillchips = list(/obj/item/skillchip/job/engineer)
	gloves = /obj/item/clothing/gloves/color/yellow
	id = /obj/item/card/id/away/old/tcommsat


/obj/item/card/id/away/old/tcommsat
	name = "telecommunication officer's ID card"
	desc = "A faded ID card. You can make out the rank \"Telecommunication Officer\"."
	assignment = "Telecommunication Officer"
	access = list(29, 48, 64)