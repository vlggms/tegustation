/*
Who is terragov?
Terragov is a remnant of the last nations on Earth. Their language is Galactic Common, which is a mixture of old Chinese and old English(edited)

Terragov is  made up of 6 divisions
TG-EU
TG-Americas
TG-Russia
TG-China
TG-Africa
TG-UN

TG-Americas and TG-China are the 2 biggest divisions, both speak Galactic Common with their own distinct accent  that's similar to their ancient dialect
The TG-UN is a leftover from the formation of Terragov. They prevent conflict between the divisions.

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

//custom sunglasses, because fuck you

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

//armbands, for divisions, maybe a "pefererd terragov division" pref? Scratch that, earlier me, probabaly a beacon where you can pick your divisions, which gives you a cool helmet and armband!

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

//GUNS!!
//UN
/obj/item/gun/ballistic/automatic/proto
	name = "\improper SABR SMG"
	desc = "A three-round burst 9mm submachine gun. Used by TerraGov. Has a threaded barrel for suppressors."
	w_class = WEIGHT_CLASS_HUGE

//RU
/obj/item/gun/ballistic/automatic/pistol/terragov
	name = "Makarov PM"
	desc = "A modern reproduction of the ancient 9mm handgun. Has a threaded barrel for suppressors."
	w_class = WEIGHT_CLASS_NORMAL
	fire_sound = 'sound/weapons/gun/pistol/shot_alt.ogg'
	rack_sound = 'sound/weapons/gun/pistol/rack.ogg'
	lock_back_sound = 'sound/weapons/gun/pistol/slide_lock.ogg'
	bolt_drop_sound = 'sound/weapons/gun/pistol/slide_drop.ogg'
	icon = 'ModularTegustation/TeguIcons/makarovpm.dmi'

//AM
//maybe add revolver?

//EU
/obj/item/gun/ballistic/automatic/pistol/sig
	name = "SIG Sauer"
	desc = "A classic handgun with a larger than average magazine capacity."
	spread = 1
	w_class = WEIGHT_CLASS_NORMAL
	icon_state = "secpistol" //temp icon, will replace with better icon soon
	mag_type = /obj/item/ammo_box/magazine/m9mm_aps/sig
	can_suppress = FALSE
	fire_sound = 'sound/weapons/gun/pistol/shot_alt.ogg'
	rack_sound = 'sound/weapons/gun/pistol/rack.ogg'
	lock_back_sound = 'sound/weapons/gun/pistol/slide_lock.ogg'
	bolt_drop_sound = 'sound/weapons/gun/pistol/slide_drop.ogg'
//custom mags

/obj/item/ammo_box/magazine/m9mm_aps/sig
	name = "SIG Sauer pistol magazine (9mm)"

//Choice beacons, may or may not be borked
/*
choices:
TerraGov - No division
TerraGov - United Nations
TerraGov - Europe
TerraGov - Russia
TerraGov - China
TerraGov - America
TerraGov - Africa

*/
/obj/item/choice_beacon/terragov_faction
	name = "division choice"
	desc = "We forgot to send you your armbands and helmets. Oops. Simply pick the division you are a part of and we will send it your way."

/obj/item/choice_beacon/terragov_faction/generate_display_names()
	var/static/list/faction_list
	if(!faction_list)
		faction_list = list()
		var/list/templist = typesof(/obj/item/storage/box/terragov_helms) //we have to convert type = name to name = type, how lovely!
		for(var/V in templist)
			var/atom/A = V
			faction_list[initial(A.name)] = A
	return faction_list

/obj/item/choice_beacon/terragov_faction/spawn_option(obj/choice,mob/living/M)
	new choice(get_turf(M))
	var/msg = "<span class=danger>After making your selection, a box suddenly apears out of blue dust!</span>"
	if(ishuman(M))
		var/mob/living/carbon/human/H = M
		if(istype(H.ears, /obj/item/radio/headset))
			msg = "You hear something crackle in your ears for a moment before a voice speaks.  \"Please stand by for a message from High Command.  Message as follows: <span class='bold'>Requestion received. You should have reccived your item right about now.</span> Message ends.\""
	to_chat(M, msg)

//boxes with said items
/obj/item/storage/box/terragov_helms
	name = "TerraGov - No division"

/obj/item/storage/box/terragov_helms/PopulateContents()
	new /obj/item/clothing/head/helmet/swat/terragov(src)
	new /obj/item/clothing/accessory/armband/terragov(src)

/obj/item/storage/box/terragov_helms/un
	name = "TerraGov - United Nations"

/obj/item/storage/box/terragov_helms/un/PopulateContents()
	new /obj/item/clothing/head/helmet/swat/terragov/un(src)
	new /obj/item/clothing/accessory/armband/terragov/un(src)

/obj/item/storage/box/terragov_helms/eu
	name = "TerraGov - Europe"

/obj/item/storage/box/terragov_helms/eu/PopulateContents()
	new /obj/item/clothing/head/helmet/swat/terragov/beret(src)
	new /obj/item/clothing/accessory/armband/terragov/eu(src)

/obj/item/storage/box/terragov_helms/ru
	name = "TerraGov - Russia"

/obj/item/storage/box/terragov_helms/ru/PopulateContents()
	new /obj/item/clothing/head/helmet/swat/terragov/beret(src)
	new /obj/item/clothing/accessory/armband/terragov/ru(src)

/obj/item/storage/box/terragov_helms/cn
	name = "TerraGov - China"

/obj/item/storage/box/terragov_helms/cn/PopulateContents()
	new /obj/item/clothing/head/helmet/swat/terragov(src)
	new /obj/item/clothing/accessory/armband/terragov/cn(src)

/obj/item/storage/box/terragov_helms/am
	name = "TerraGov - America"

/obj/item/storage/box/terragov_helms/am/PopulateContents()
	new /obj/item/clothing/head/helmet/swat/terragov(src)
	new /obj/item/clothing/accessory/armband/terragov/am(src)

/obj/item/storage/box/terragov_helms/af
	name = "TerraGov - Africa"

/obj/item/storage/box/terragov_helms/af/PopulateContents()
	new /obj/item/clothing/head/helmet/swat/terragov/beret(src)
	new /obj/item/clothing/accessory/armband/terragov/af(src)

//pistol beacon
/obj/item/choice_beacon/terragov_sidearm
	name = "sidearm choice"
	desc = "TerraGov has collected a armament of service pistols over history. Most of them are still in service and can be ordered here."

/obj/item/choice_beacon/terragov_sidearm/generate_display_names()
	var/static/list/gun_list
	if(!gun_list)
		gun_list = list()
		var/list/templist = typesof(/obj/item/storage/box/sidearm) //we have to convert type = name to name = type, how lovely!
		for(var/V in templist)
			var/atom/A = V
			gun_list[initial(A.name)] = A
	return gun_list

/obj/item/choice_beacon/terragov_faction/spawn_option(obj/choice,mob/living/M)
	new choice(get_turf(M))
	var/msg = "<span class=danger>After making your selection, a box suddenly apears out of blue dust!</span>"
	if(ishuman(M))
		var/mob/living/carbon/human/H = M
		if(istype(H.ears, /obj/item/radio/headset))
			msg = "You hear something crackle in your ears for a moment before a voice speaks.  \"Please stand by for a message from High Command.  Message as follows: <span class='bold'>Requestion received. You should have reccived your item right about now.</span> Message ends.\""
	to_chat(M, msg)

obj/item/storage/box/sidearm
	name = "TG-RU Makarov PM"

/obj/item/storage/box/sidearm/PopulateContents()
	new /obj/item/gun/ballistic/automatic/pistol/terragov(src)
	new /obj/item/suppressor(src)
	new /obj/item/ammo_box/magazine/m9mm(src)
	new /obj/item/ammo_box/magazine/m9mm(src)

obj/item/storage/box/sidearm/m1911
	name = "TG-AM M1911"

/obj/item/storage/box/sidearm/m1911/PopulateContents()
	new /obj/item/gun/ballistic/automatic/pistol/m1911(src)
	new /obj/item/ammo_box/magazine/m45(src)
	new /obj/item/ammo_box/magazine/m45(src)
	new /obj/item/ammo_box/magazine/m45(src)

obj/item/storage/box/sidearm/sig
	name = "TG-EU SIG Sauer"

/obj/item/storage/box/sidearm/sig/PopulateContents()
	new /obj/item/gun/ballistic/automatic/pistol/sig(src)
	new /obj/item/ammo_box/magazine/m9mm_aps/sig(src)
	new /obj/item/ammo_box/magazine/m9mm_aps/sig(src)

obj/item/storage/box/sidearm/deagle
	name = "TG-AF Desert Eagle"

/obj/item/storage/box/sidearm/deagle/PopulateContents()
	new /obj/item/gun/ballistic/automatic/pistol/deagle/camo(src)
	new /obj/item/ammo_box/magazine/m50(src)
	new /obj/item/ammo_box/magazine/m50(src)

obj/item/storage/box/sidearm/unica
	name = "TG-RU Unica Revolver"

/obj/item/storage/box/sidearm/unica/PopulateContents()
	new /obj/item/gun/ballistic/revolver/mateba(src)
//erts

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
		/obj/item/crowbar=1)

/datum/outfit/terragov/sodlier
	name = "Terragov Soldier"
	uniform = /obj/item/clothing/under/terragov/camo
	shoes = /obj/item/clothing/shoes/jackboots
	glasses  = /obj/item/clothing/glasses/hud/terragov
	r_hand = /obj/item/choice_beacon/terragov_faction
	r_pocket = /obj/item/choice_beacon/terragov_sidearm
	suit = /obj/item/clothing/suit/armor/bulletproof
	back = /obj/item/storage/backpack
	gloves = /obj/item/clothing/gloves/combat
	id = /obj/item/card/id/centcom // for now
	ears = /obj/item/radio/headset/terragov/alt
	backpack_contents = list(/obj/item/storage/box/survival/engineer=1,\
		/obj/item/crowbar/power)

/datum/outfit/terragov/sodlier/elite
	name = "Terragov Elite"
	uniform = /obj/item/clothing/under/terragov/camo
	shoes = /obj/item/clothing/shoes/jackboots
	glasses  = /obj/item/clothing/glasses/hud/terragov/elite
	suit = /obj/item/clothing/suit/space/hardsuit/deathsquad // /hardsuit/terragov soon :tm:, or maybe even a subtype of the syndicate harsuit?
	r_hand = /obj/item/choice_beacon/terragov_faction
	r_pocket = /obj/item/choice_beacon/terragov_sidearm
	back = /obj/item/storage/backpack
	gloves = /obj/item/clothing/gloves/combat
	id = /obj/item/card/id/centcom // for now
	ears = /obj/item/radio/headset/terragov/alt
	backpack_contents = list(/obj/item/storage/box/survival/engineer=1,\
		/obj/item/crowbar/power)

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

//???


/datum/ert/terragov/official
	code = "102"
	teamsize = 1
	opendoors = FALSE
	leader_role = /datum/antagonist/ert/terragov/official
	roles = list(/datum/antagonist/ert/terragov/official)
	rename_team = "TerraGov Officials"
	polldesc = "a TerraGov Official"
	mission = "Cover up a information leak or inspect the station."
	random_names = FALSE
	leader_experience = FALSE

/datum/ert/terragov
	leader_role = /datum/antagonist/ert/terragov
	roles = list(/datum/antagonist/ert/terragov)
	code = "101"
	rename_team = "TerraGov Intervention Squad"
	polldesc = "a TerraGov Intervention Squad"


/datum/ert/terragov/elite
	roles = list(/datum/antagonist/ert/terragov/elite)
	leader_role = /datum/antagonist/ert/terragov/elite
	rename_team = "TerraGov Soldier"
	code = "404"
	mission = "You been taken out of space Afganastan to assist the station. From one hell to another."
	polldesc = "a TerraGov Military Squadron"
