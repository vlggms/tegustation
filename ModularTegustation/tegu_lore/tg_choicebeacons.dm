//choice becaons, even though its a ert customization is cool

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
/*
Deagle - Africa
M1911 - USA
Sig Sauer P226 - EU
Makarov - RU
Type 64 - China
Beretta M9 - UN
Glock 17 - No Affiliation
*/
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
	new /obj/item/ammo_box/magazine/m9mm(src)
	new /obj/item/ammo_box/magazine/m9mm(src)

obj/item/storage/box/sidearm/m1911
	name = "TG-AM M1911"

/obj/item/storage/box/sidearm/m1911/PopulateContents()
	new /obj/item/gun/ballistic/automatic/pistol/m1911(src)
	new /obj/item/ammo_box/magazine/m45(src)

obj/item/storage/box/sidearm/sig
	name = "TG-EU SIG Sauer"

/obj/item/storage/box/sidearm/sig/PopulateContents()
	new /obj/item/gun/ballistic/automatic/pistol/terragov/sig(src)
	new /obj/item/ammo_box/magazine/m9mm_aps/sig(src)
	new /obj/item/ammo_box/magazine/m9mm_aps/sig(src)

obj/item/storage/box/sidearm/deagle
	name = "TG-AF Desert Eagle"

/obj/item/storage/box/sidearm/deagle/PopulateContents()
	new /obj/item/gun/ballistic/automatic/pistol/deagle/camo(src)

obj/item/storage/box/sidearm/ppk
	name = "TG-CN Type 64"

/obj/item/storage/box/sidearm/ppk/PopulateContents()
	new /obj/item/gun/ballistic/automatic/pistol/terragov/ppk(src)
	new /obj/item/ammo_box/magazine/m38(src)
	new /obj/item/ammo_box/magazine/m38(src)

obj/item/storage/box/sidearm/glock
	name = "TG Glock"

/obj/item/storage/box/sidearm/glock/PopulateContents()
	new /obj/item/gun/ballistic/automatic/pistol/terragov/glock(src)
	new /obj/item/ammo_box/magazine/m9mm(src)
	new /obj/item/ammo_box/magazine/m9mm(src)

obj/item/storage/box/sidearm/beretta
	name = "TG-UN Beretta"

/obj/item/storage/box/sidearm/beretta/PopulateContents()
	new /obj/item/gun/ballistic/automatic/pistol/terragov/beretta(src)
	new /obj/item/ammo_box/magazine/m9mm(src)
	new /obj/item/ammo_box/magazine/m9mm(src)

//specialist beacon, totally not a ripoff of another station...
/*


*/
/obj/item/choice_beacon/terragov_specialist
	name = "specialist choice"
	desc = "No two missions are the same, although you can get good weaponry from here, its to have designate roles based on your choices here."

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
