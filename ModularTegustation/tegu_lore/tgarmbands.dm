/*
Who is terragov?
Terragov is a remnant of the last nations on Earth. Their language is Galactic Common, which is a mixture of old Chinese and old English(edited)

Terragov is  made up of 6 factions
TG-EU
TG-Americas
TG-Russia
TG-China
TG-Africa
TG-UN

TG-Americas and TG-China are the 2 biggest factions, both speak Galactic Common with their own distinct accent  that's similar to their ancient dialect
The TG-UN is a leftover from the formation of Terragov. They prevent conflict between the factions.

Note that TG-Russia and Space Russia (or the third soviet union or USSP if you are fancy) are not the same thing, in fact, Terragov and Space russia are in a undeclared war!
although space russia is vastly weaker than TG, space russia is too far away to attack, and only TG-RU has been seending expeditionary fleets into Space russian space.
*/
//cloths

//officer
/*
/obj/item/clothing/under/rank/terragov
	desc = "It's a jumpsuit worn by Terragov Officers"
	name = "terragov uniform"
	inhand_icon_state = "b_suit"
	sensor_mode = SENSOR_COORDS
	random_sensor = FALSE
	icon = 'ModularTegustation/Teguicons/tegu_terragov_clothing_item.dmi'
	worn_icon = 'ModularTegustation/Teguicons/tegu_terragov_clothing.dmi'
	icon_state = "terraofficer"
	armor = list(MELEE = 10, BULLET = 0, LASER = 0,ENERGY = 0, BOMB = 0, BIO = 0, RAD = 0, FIRE = 30, ACID = 30, WOUND = 10)

/obj/item/clothing/suit/armor/vest/terragov
	name = "terragov tunic"
	desc = "It's a extremely protective vest worn by Terragov officers."
	icon = 'ModularTegustation/Teguicons/tegu_terragov_clothing_item.dmi'
	worn_icon = 'ModularTegustation/Teguicons/tegu_terragov_clothing.dmi'
	icon_state = "terratunic"
	inhand_icon_state = "bio_suit"
	body_parts_covered = CHEST|GROIN|LEGS|ARMS
	armor = list(MELEE = 50, BULLET = 40, LASER = 20, ENERGY = 20, BOMB = 25, BIO = 0, RAD = 0, FIRE = 100, ACID = 90, WOUND = 10)

/obj/item/clothing/head/terragov
	name = "terragov cap"
	desc = "The robust Cap of a Terragov officer. For showing the megacorprations who's in charge."
	icon = 'ModularTegustation/Teguicons/tegu_terragov_clothing_item.dmi'
	worn_icon = 'ModularTegustation/Teguicons/tegu_terragov_clothing.dmi'
	icon_state = "terracap"
	armor = list(MELEE = 40, BULLET = 30, LASER = 25, ENERGY = 35, BOMB = 25, BIO = 10, RAD = 0, FIRE = 50, ACID = 60, WOUND = 10)
	strip_delay = 80
	dynamic_hair_suffix = ""
	*/ // imagine losing your progress like a dumbass

//officals "weird cia agent"
/obj/item/clothing/under/suit/black_really/terragov
	name = " terragov suit"
	desc = "A formal black suit and red tie. Used by non-military Terragov personel."
	armor = list(MELEE = 10, BULLET = 0, LASER = 0, ENERGY = 0, BOMB = 0, BIO = 0, RAD = 0, FIRE = 0, ACID = 0)

//soldiers
/obj/item/clothing/under/terragov/camo
	name = "camouflage fatigues"
	desc = "A green military camouflage uniform used by Terragov soldiers in every faction."
	icon_state = "camogreen"
	inhand_icon_state = "g_suit"
	armor = list(MELEE = 10, BULLET = 10, LASER = 0,ENERGY = 0, BOMB = 10, BIO = 0, RAD = 0, FIRE = 50, ACID = 40, WOUND = 10)
	alt_covers_chest = TRUE
	can_adjust = FALSE
	icon = 'icons/obj/clothing/under/syndicate.dmi'
	worn_icon = 'icons/mob/clothing/under/syndicate.dmi'

// regular helmets, for peacekeeping and regular erts
/obj/item/clothing/head/helmet/alt/terragov
	name = "terragov helmet"
	desc = "A helmet used by TG-AM and TG-CN."

/obj/item/clothing/head/helmet/alt/terragov/beret
	name = "terragov beret"
	desc = "A beret used by TG-RU, TG-EU, and TG-AF."
	icon_state = "hosberetblack"

/obj/item/clothing/head/helmet/alt/terragov/un
	name = "un helmet"
	desc = "A blue helmet used by TG-UN for peacekeeping operations	."
	icon_state = "antichristhelm"
	icon = 'ModularTegustation/Teguicons/tegu_armbands.dmi'
	worn_icon = 'ModularTegustation/Teguicons/tegu_armbands_worn.dmi'

//deathsquad / real bad shit ert

/obj/item/clothing/head/helmet/swat/terragov
	name = "elite terragov helmet"
	desc = "A spaceproof helmet used by space force operations by TG-AM and TG-CN."
	icon_state = "helmetalt"

/obj/item/clothing/head/helmet/swat/terragov/beret
	name = "elite terragov beret"
	desc = "A bulletproof helmet used by TG-RU, TG-EU, and TG-AF."
	icon_state = "hosberetblack"

/obj/item/clothing/head/helmet/swat/terragov/un
	name = "elite peacekeeper helmet"
	desc = "A blue helmet used by TG-UN for \"peacekeeping\" operations."
	icon_state = "antichristhelm"
	icon = 'ModularTegustation/Teguicons/tegu_armbands.dmi'
	worn_icon = 'ModularTegustation/Teguicons/tegu_armbands_worn.dmi'

//custom sunglasses, because fuck you

/obj/item/clothing/glasses/hud/terragov
	name = "protective goggles"
	desc = "Protects agains flashes while providing information about criminal records, both on the Terragov database and on the local station database."
	icon_state = "sunglasses"
	hud_type = (ANTAG_HUD_GANGSTER, DATA_HUD_SECURITY_BASIC, DATA_HUD_MEDICAL_BASIC)
	darkness_view = 1
	flash_protect = FLASH_PROTECTION_FLASH
	tint = 1
	glass_colour_type = /datum/client_colour/glass_colour/gray

/obj/item/clothing/glasses/hud/terragov/elite
	name = "elite goggles"
	desc = "Protects agains flashes while providing top-secret info from Terragov's inteligence agencies."
	icon_state = "bigsunglasses"
	hud_type = (ANTAG_HUD_GANGSTER, ANTAG_HUD_CULT, ANTAG_HUD_REV, ANTAG_HUD_FUGITIVE, DATA_HUD_SECURITY_ADVANCED, DATA_HUD_MEDICAL_ADVANCED, DATA_HUD_DIAGNOSTIC_ADVANCED, DATA_HUD_DIAGNOSTIC_ADVANCED, DATA_HUD_AI_DETECT)
	darkness_view = 1

//armbands, for factions, maybe a "pefererd terragov faction" pref? Scratch that, earlier me, probabaly a beacon where you can pick your faction, which gives you a cool helmet and armband!

/obj/item/clothing/accessory/armband/terragov
	name = "terragov armband"
	desc = "A armband worn by Terragov officals if they don't want to get involved with Terragov's politics."
	icon_state = "terraband"
	icon = 'ModularTegustation/Teguicons/tegu_armbands.dmi'
	worn_icon = 'ModularTegustation/Teguicons/tegu_armbands_worn.dmi'

/obj/item/clothing/accessory/armband/terragov/un
	name = "tg-un armband"
	desc = "A light blue armband worn by those in the UN faction of Terragov. For when you love the antichrist."
	icon_state = "tgunband"

/obj/item/clothing/accessory/armband/terragov/eu
	name = "tg-eu armband"
	desc = "A blue armband worn by those in the EU faction of Terragov. Est Europa nunc unita!"
	icon_state = "tgeuband"

/obj/item/clothing/accessory/armband/terragov/cn
	name = "tg-cn armband"
	desc = "A rainbow colored armband worn by those in the CN faction of Terragov."
	icon_state = "tgcnband"

/obj/item/clothing/accessory/armband/terragov/af
	name = "tg-af armband"
	desc = "A green colored armband worn by those in the AF faction of Terragov."
	icon_state = "tgafband"

/obj/item/clothing/accessory/armband/terragov/am
	name = "tg-am armband"
	desc = "A red and white colored armband worn by those in the AM faction of Terragov."
	icon_state = "tgamband"
	attachment_slot = null

/obj/item/clothing/accessory/armband/terragov/ru
	name = "tg-ru armband"
	desc = "A blue and white colored armband worn by those in the RU faction of Terragov."
	icon_state = "tgruband"
//erps

//outfits
/datum/outfit/terragov/offical
	name = "Terragov Offical"
	uniform = /obj/item/under/suit/black_really/terragov
	shoes = /obj/item/clothing/shoes/jackboots
	glasses  = /obj/item/clothing/glasses/sunglasses
	r_pocket = /obj/item/gun/ballistic/automatic/pistol // pistol/terragov soon :tm:
	l_pocket = /obj/item/ammo_box/magazine/m9mm  //pistol
	r_hand = /obj/item/storage/briefcase
	suit = /obj/item/clothing/suit/armor/vest
	back = /obj/item/storage/backpack
	gloves = /obj/item/clothing/gloves/combat
	id = /obj/item/card/id/centcom // for now
	ears = /obj/item/radio/headset/terragov/alt
	backpack_contents = list(/obj/item/storage/box/survival/engineer=1,\
		/obj/item/clothing/gloves/color/latex=1,\
		/obj/item/crowbar=1\
		/obj/item/assembly/flash/hypnotic)

/datum/outfit/terragov/sodlier
	name = "Terragov Soldier"
	uniform = /obj/item/clothing/under/terragov/camo
	shoes = /obj/item/clothing/shoes/jackboots
	glasses  = /obj/item/clothing/glasses/hud/terragov
	suit = /obj/item/clothing/suit/armor/bulletproof
	back = /obj/item/storage/backpack
	gloves = /obj/item/clothing/gloves/combat
	id = /obj/item/card/id/centcom // for now
	ears = /obj/item/radio/headset/terragov/alt
	backpack_contents = list(/obj/item/storage/box/survival/engineer=1,\
		/obj/item/crowbar/powertool)

/datum/outfit/terragov/sodlier/elite
	name = "Terragov Elite"
	uniform = /obj/item/clothing/under/terragov/camo
	shoes = /obj/item/clothing/shoes/jackboots
	glasses  = /obj/item/clothing/glasses/hud/terragov/elite
	suit = /obj/item/clothing/suit/space/hardsuit/deathsquad // /hardsuit/terragov soon :tm:, or maybe even a subtype of the syndicate harsuit?
	back = /obj/item/storage/backpack
	gloves = /obj/item/clothing/gloves/combat
	id = /obj/item/card/id/centcom // for now
	ears = /obj/item/radio/headset/terragov/alt
	backpack_contents = list(/obj/item/storage/box/survival/engineer=1,\
		/obj/item/crowbar/powertool)

//ert shit

/datum/antagonist/ert/terragov
	name = "TerraGov Intervention Squad"
	outfit = /datum/outfit/terragov/sodlier
	role = "Soldier"

/datum/antagonist/ert/terragov/greet()
	if(!ert_team)
		return

	to_chat(owner, "<B><font size=3 color=red>You are the [name].</font></B>")
	to_chat(owner, "<B><font size=5 color=red>You are NOT a Nanotrasen Employee. You are a soldier of TerraGov.</font></B>")
	var/missiondesc = "Your squad is being sent on a mission to [station_name()] TerraGov high command."
	if(leader) //If Squad Leader
		missiondesc += " Lead your squad to ensure the completion of the mission. Board the shuttle when your team is ready."
	else
		missiondesc += " Follow orders given to you by your squad leader."
	if(!rip_and_tear)
		missiondesc += "Avoid human casualties whenever possible, non-human casualties are fine."

	missiondesc += "<BR><B>Your Mission</B> : [ert_team.mission.explanation_text]"
	to_chat(owner,missiondesc)

/datum/antagonist/ert/terragov/elite
	name = "TerraGov Elite Military Force"
	outfit = /datum/outfit/terragov/sodlier/elite
	role = "Trooper"
	rip_and_tear = TRUE

//TERRAGOV OFFICAL

/datum/antagonist/ert/terragov/official
	name = "Terragov Official"
	show_name_in_check_antagonists = TRUE
	var/datum/objective/mission
	role = "Inspector"
	random_names = FALSE
	outfit = /datum/outfit/terragov/offical

/datum/antagonist/ert/terragov/official/greet()
	to_chat(owner, "<B><font size=3 color=red>You are a TerraGov Official.</font></B>")
	to_chat(owner, "<B><font size=5 color=red>You are NOT a Nanotrasen Employee.</font></B>")

	if (ert_team)
		to_chat(owner, "TerraGov is sending you to [station_name()] with the task: [ert_team.mission.explanation_text]")
	else
		to_chat(owner, "TerraGov is sending you to [station_name()] with the task: [mission.explanation_text]")

/datum/antagonist/ert/terragov/official/forge_objectives()
	if (ert_team)
		return ..()
	if(mission)
		return
	var/datum/objective/missionobj = new ()
	missionobj.owner = owner
	missionobj.explanation_text = "Cover up a information leak on [station_name()]."
	missionobj.completed = TRUE
	mission = missionobj
	objectives |= mission
