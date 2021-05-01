//clothes/armbands


//officals "weird cia agent"
/obj/item/clothing/under/suit_jacket/really_black/terragov
	name = " terragov suit"
	desc = "A formal black suit and red tie. Used by non-military Terragov personel."
	armor = list(MELEE = 10, BULLET = 0, LASER = 0, ENERGY = 0, BOMB = 0, BIO = 0, RAD = 0, FIRE = 0, ACID = 0)
	icon_state = "really_black_suit"
	inhand_icon_state = "really_black_suit"
	icon = 'icons/obj/clothing/under/suits.dmi'
	worn_icon = 'icons/mob/clothing/under/suits.dmi'
//soldiers
/obj/item/clothing/under/terragov/camo
	name = "camouflage fatigues"
	desc = "A green military camouflage uniform used by Terragov soldiers in every division."
	icon_state = "camogreen"
	inhand_icon_state = "g_suit"
	armor = list(MELEE = 10, BULLET = 10, LASER = 0,ENERGY = 0, BOMB = 10, BIO = 0, RAD = 0, FIRE = 50, ACID = 40, WOUND = 10)
	alt_covers_chest = TRUE
	can_adjust = FALSE
	icon = 'icons/obj/clothing/under/syndicate.dmi'
	worn_icon = 'icons/mob/clothing/under/syndicate.dmi'

// Helmets, can be picked
/obj/item/clothing/head/helmet/swat/terragov
	name = "military terragov helmet"
	desc = "A spaceproof helmet used by space force operations by TG-AM and TG-CN."
	icon_state = "helmetalt"

/obj/item/clothing/head/helmet/swat/terragov/beret
	name = "military terragov beret"
	desc = "A bulletproof helmet used by TG-RU, TG-EU, and TG-AF."
	icon_state = "hosberetblack"

/obj/item/clothing/head/helmet/swat/terragov/un
	name = "military peacekeeper helmet"
	desc = "A blue helmet used by TG-UN for \"peacekeeping\" operations."
	icon_state = "antichristhelm"
	icon = 'ModularTegustation/Teguicons/tegu_armbands.dmi'
	worn_icon = 'ModularTegustation/Teguicons/tegu_armbands_worn.dmi'

//custom sunglasses, because why not

/obj/item/clothing/glasses/hud/terragov
	name = "protective goggles"
	desc = "Protects agains flashes while providing information about criminal records, both on the Terragov database and on the local station database."
	icon_state = "sun"
	darkness_view = 1
	flash_protect = FLASH_PROTECTION_FLASH
	tint = 1
	glass_colour_type = /datum/client_colour/glass_colour/gray

/obj/item/clothing/glasses/hud/terragov/elite
	name = "elite goggles"
	desc = "Protects agains flashes while providing top-secret info from Terragov's inteligence agencies."
	icon_state = "bigsunglasses"
	darkness_view = 1

//glasses code

/obj/item/clothing/glasses/hud/terragov/dropped(mob/user)
	..()
	remove_sensors(user)

/obj/item/clothing/glasses/hud/terragov/equipped(mob/user, slot)
	..()
	add_sensors(user, slot)

/obj/item/clothing/glasses/hud/terragov/proc/remove_sensors(mob/user)
	if(!user)
		if(ismob(loc))
			user = loc
		else
			return
	var/datum/atom_hud/gangsensor = GLOB.huds[ANTAG_HUD_GANGSTER]
	var/datum/atom_hud/medsensor = GLOB.huds[DATA_HUD_SECURITY_BASIC]
	var/datum/atom_hud/secsensor = GLOB.huds[DATA_HUD_MEDICAL_BASIC]
	secsensor.remove_hud_from(user)
	medsensor.remove_hud_from(user)
	gangsensor.remove_hud_from(user)


/obj/item/clothing/glasses/hud/terragov/proc/add_sensors(mob/user, slot)
	if(slot != ITEM_SLOT_EYES)
		return
	if(!user)
		if(ismob(loc))
			user = loc
		else
			return
	var/datum/atom_hud/gangsensor = GLOB.huds[ANTAG_HUD_GANGSTER]
	var/datum/atom_hud/medsensor = GLOB.huds[DATA_HUD_SECURITY_BASIC]
	var/datum/atom_hud/secsensor = GLOB.huds[DATA_HUD_MEDICAL_BASIC]
	secsensor.add_hud_to(user)
	medsensor.add_hud_to(user)
	gangsensor.add_hud_to(user)



/obj/item/clothing/glasses/hud/terragov/elite/Destroy()
	remove_sensors()
	return ..()

// now the advanced hud

/obj/item/clothing/glasses/hud/terragov/elite/dropped(mob/user)
	..()
	remove_sensors_elite(user)

/obj/item/clothing/glasses/hud/terragov/elite/equipped(mob/user, slot)
	..()
	add_sensors_elite(user, slot)

/obj/item/clothing/glasses/hud/terragov/elite/proc/remove_sensors_elite(mob/user)
	if(!user)
		if(ismob(loc))
			user = loc
		else
			return
	var/datum/atom_hud/gangsensor = GLOB.huds[ANTAG_HUD_GANGSTER]
	var/datum/atom_hud/cultsensor = GLOB.huds[ANTAG_HUD_CULT]
	var/datum/atom_hud/revsensor = GLOB.huds[ANTAG_HUD_REV]
	var/datum/atom_hud/fugsensor = GLOB.huds[ANTAG_HUD_FUGITIVE]
	var/datum/atom_hud/secsensor = GLOB.huds[DATA_HUD_SECURITY_ADVANCED]
	var/datum/atom_hud/medsensor = GLOB.huds[DATA_HUD_MEDICAL_ADVANCED]
	var/datum/atom_hud/diagsensor = GLOB.huds[DATA_HUD_DIAGNOSTIC_ADVANCED]
	var/datum/atom_hud/aisensor = GLOB.huds[DATA_HUD_AI_DETECT]

	secsensor.remove_hud_from(user)
	medsensor.remove_hud_from(user)
	gangsensor.remove_hud_from(user)
	revsensor.remove_hud_from(user)
	fugsensor.remove_hud_from(user)
	diagsensor.remove_hud_from(user)
	aisensor.remove_hud_from(user)
	cultsensor.remove_hud_from(user)

/obj/item/clothing/glasses/hud/terragov/elite/proc/add_sensors_elite(mob/user, slot)
	if(slot != ITEM_SLOT_EYES)
		return
	if(!user)
		if(ismob(loc))
			user = loc
		else
			return
	var/datum/atom_hud/gangsensor = GLOB.huds[ANTAG_HUD_GANGSTER]
	var/datum/atom_hud/cultsensor = GLOB.huds[ANTAG_HUD_CULT]
	var/datum/atom_hud/revsensor = GLOB.huds[ANTAG_HUD_REV]
	var/datum/atom_hud/fugsensor = GLOB.huds[ANTAG_HUD_FUGITIVE]
	var/datum/atom_hud/secsensor = GLOB.huds[DATA_HUD_SECURITY_ADVANCED]
	var/datum/atom_hud/medsensor = GLOB.huds[DATA_HUD_MEDICAL_ADVANCED]
	var/datum/atom_hud/diagsensor = GLOB.huds[DATA_HUD_DIAGNOSTIC_ADVANCED]
	var/datum/atom_hud/aisensor = GLOB.huds[DATA_HUD_AI_DETECT]

	secsensor.add_hud_to(user)
	medsensor.add_hud_to(user)
	gangsensor.add_hud_to(user)
	revsensor.add_hud_to(user)
	fugsensor.add_hud_to(user)
	diagsensor.add_hud_to(user)
	aisensor.add_hud_to(user)
	cultsensor.add_hud_to(user)

/obj/item/clothing/glasses/hud/terragov/elite/Destroy()
	remove_sensors_elite()
	return ..()

//armbands, for divisions

/obj/item/clothing/accessory/armband/terragov
	name = "terragov armband"
	desc = "A armband worn by Terragov officals if they don't want to get involved with Terragov's politics."
	icon_state = "terraband"
	worn_icon_state ="terraband"
	icon = 'ModularTegustation/Teguicons/tegu_armbands.dmi'
	worn_icon = 'ModularTegustation/Teguicons/tegu_armbands_worn.dmi'

/obj/item/clothing/accessory/armband/terragov/un
	name = "tg-un armband"
	desc = "A light blue armband worn by those in the UN division of Terragov. For when you love the antichrist."
	icon_state = "tgunband"

/obj/item/clothing/accessory/armband/terragov/eu
	name = "tg-eu armband"
	desc = "A blue armband worn by those in the EU division of Terragov. Est Europa nunc unita!"
	icon_state = "tgeuband"

/obj/item/clothing/accessory/armband/terragov/cn
	name = "tg-cn armband"
	desc = "A rainbow colored armband worn by those in the CN division of Terragov."
	icon_state = "tgcnband"

/obj/item/clothing/accessory/armband/terragov/af
	name = "tg-af armband"
	desc = "A green colored armband worn by those in the AF division of Terragov."
	icon_state = "tgafband"

/obj/item/clothing/accessory/armband/terragov/am
	name = "tg-am armband"
	desc = "A red and white colored armband worn by those in the AM division of Terragov."
	icon_state = "tgamband"
	attachment_slot = null

/obj/item/clothing/accessory/armband/terragov/ru
	name = "tg-ru armband"
	desc = "A blue and white colored armband worn by those in the RU division of Terragov."
	icon_state = "tgruband"

//outfits
/datum/outfit/terragov/offical
	name = "Terragov Offical"
	uniform = /obj/item/clothing/under/suit_jacket/really_black/terragov
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
		/obj/item/crowbar=1,\
		/obj/item/choice_beacon/terragov_sidearm)

/datum/outfit/terragov/sodlier
	name = "Terragov Soldier"
	uniform = /obj/item/clothing/under/terragov/camo
	shoes = /obj/item/clothing/shoes/jackboots
	glasses  = /obj/item/clothing/glasses/hud/terragov
	r_hand = /obj/item/choice_beacon/terragov_faction
	suit = /obj/item/clothing/suit/armor/bulletproof
	back = /obj/item/storage/backpack
	gloves = /obj/item/clothing/gloves/combat
	id = /obj/item/card/id/centcom // for now
	ears = /obj/item/radio/headset/terragov/alt
	backpack_contents = list(/obj/item/storage/box/survival/engineer=1,\
		/obj/item/crowbar/power,\
		/obj/item/choice_beacon/terragov_sidearm,
		/obj/item/choice_beacon/terragov_specialist)

/datum/outfit/terragov/sodlier/elite
	name = "Terragov Elite"
	uniform = /obj/item/clothing/under/terragov/camo
	shoes = /obj/item/clothing/shoes/jackboots
	glasses  = /obj/item/clothing/glasses/hud/terragov/elite
	suit = /obj/item/clothing/suit/space/hardsuit/deathsquad // /hardsuit/terragov soon :tm:, or maybe even a subtype of the syndicate harsuit?
	r_hand = /obj/item/gun/ballistic/automatic/l6_saw/unrestricted
	back = /obj/item/storage/backpack
	gloves = /obj/item/clothing/gloves/combat
	id = /obj/item/card/id/centcom // for now
	ears = /obj/item/radio/headset/terragov/alt
	backpack_contents = list(/obj/item/storage/box/survival/engineer=1,\
		/obj/item/crowbar/power,\
		/obj/item/choice_beacon/terragov_sidearm,\
		/obj/item/construction/rcd/combat,\
		/obj/item/ammo_box/magazine/mm712x82=7)
