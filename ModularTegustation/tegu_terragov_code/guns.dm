/obj/item/gun/ballistic/automatic/pistol/terragov
	name = "Makarov PM"
	desc = "A modern reproduction of the ancient 9mm handgun. Has a threaded barrel for suppressors."
	fire_sound = 'sound/weapons/gun/pistol/shot_alt.ogg'
	rack_sound = 'sound/weapons/gun/pistol/rack.ogg'
	lock_back_sound = 'sound/weapons/gun/pistol/slide_lock.ogg'
	bolt_drop_sound = 'sound/weapons/gun/pistol/slide_drop.ogg'
	icon = 'ModularTegustation/TeguIcons/tegu_guns.dmi'

/obj/item/gun/ballistic/automatic/pistol/terragov/beretta
	name = "Beretta M9"
	desc = "A italian 9mm handgun. For use against pineapple on pizza lovers."
	icon_state = "beretta"
	can_suppress = FALSE

/obj/item/gun/ballistic/automatic/pistol/terragov/sig
	name = "SIG Sauer"
	desc = "A classic handgun with a larger than average magazine capacity."
	spread = 20
	w_class = WEIGHT_CLASS_NORMAL
	icon_state = "sig"
	mag_type = /obj/item/ammo_box/magazine/m9mm_aps/sig
	can_suppress = FALSE

/obj/item/gun/ballistic/automatic/pistol/terragov/ppk
	name = "Type 64"
	desc = "The classic Chinese handgun. Chambered in .38."
	w_class = WEIGHT_CLASS_NORMAL
	fire_sound = 'sound/weapons/gun/revolver/shot.ogg'
	icon_state = "ppk"
	mag_type = /obj/item/ammo_box/magazine/m38
	can_suppress = FALSE

/obj/item/gun/ballistic/automatic/pistol/terragov/glock
	name = "Glock 17"
	desc = "The well known austrian pistol. Commonly used by law enforcement."
	icon_state = "glock"
	can_suppress = FALSE

/obj/item/gun/ballistic/automatic/pistol/terragov/glock/fullauto
	name = "Glock 18"
	desc = "The well known austrian pistol. This one is fully automatic, and may break your hand."
	burst_size = 1
	spread = 30
	fire_delay = 0.5

/obj/item/gun/ballistic/automatic/pistol/terragov/glock/fullauto/ComponentInitialize()
	. = ..()
	AddComponent(/datum/component/automatic_fire, 0.1 SECONDS)

// Magazines
/obj/item/ammo_box/magazine/m9mm_aps/sig
	name = "SIG Sauer pistol magazine (9mm)"

/obj/item/ammo_box/magazine/m38
	name = "pistol magazine (.38)"
	ammo_type = /obj/item/ammo_casing/c38
	icon_state = "9x19p"
	caliber = CALIBER_38
	max_ammo = 6

/obj/item/gun/ballistic/automatic/proto/terragov
	name = "\improper SABR SMG"
	desc = "A three-round burst 9mm submachine gun. Used by TerraGov military personnel. Has a threaded barrel for suppressors."
	w_class = WEIGHT_CLASS_NORMAL
	pin = /obj/item/firing_pin
