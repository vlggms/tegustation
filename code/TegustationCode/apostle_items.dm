/obj/item/clothing/suit/armor/apostle
	name = "paradise lost"
	desc = "Your armor, to protect the holy one."
	worn_icon = 'icons/Fulpicons/fulpclothing_worn.dmi'
	icon_state = "apostlearmor"
	item_flags = DROPDEL
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	armor = list(MELEE = 80, BULLET = 60, LASER = 60, ENERGY = 80, BOMB = 100, BIO = 100, RAD = 90, FIRE = 100, ACID = 95, WOUND = 25)
	flags_inv = HIDEJUMPSUIT
	max_heat_protection_temperature = FIRE_IMMUNITY_MAX_TEMP_PROTECT
	resistance_flags = FIRE_PROOF | LAVA_PROOF
	slowdown = 0.2

/obj/item/clothing/suit/armor/apostle/Initialize()
	. = ..()
	ADD_TRAIT(src, TRAIT_NODROP, "apostle")

/obj/item/clothing/mask/gas/apostle
	name = "paradise lost"
	desc = "Pure air as a blessing."
	worn_icon = 'icons/Fulpicons/fulpclothing_worn.dmi'
	icon_state = "apostlemask"
	item_flags = DROPDEL
	visor_flags = BLOCK_GAS_SMOKE_EFFECT | MASKINTERNALS
	visor_flags_inv = HIDEFACIALHAIR
	visor_flags_cover = MASKCOVERSMOUTH
	armor = list(MELEE = 80, BULLET = 60, LASER = 60, ENERGY = 80, BOMB = 100, BIO = 100, RAD = 90, FIRE = 100, ACID = 95, WOUND = 25)
	resistance_flags = FIRE_PROOF | LAVA_PROOF

/obj/item/clothing/mask/gas/apostle/Initialize()
	. = ..()
	ADD_TRAIT(src, TRAIT_NODROP, "apostle")

/obj/item/nullrod/scythe/apostle
	icon_state = "ap_scythe"
	inhand_icon_state = "ap_scythe"
	lefthand_file = 'icons/mob/inhands/weapons/swords_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/weapons/swords_righthand.dmi'
	worn_icon_state = "scythe"
	icon = 'icons/Fulpicons/fulpitems.dmi'
	name = "holy scythe"
	desc = "None shall harm us."
	hitsound = 'sound/tegu_sounds/antagonist/scythe.ogg'
	force = 30
	throwforce = 35
	armour_penetration = 35
	block_chance = 50
	wound_bonus = 15
	bare_wound_bonus = 30
	sharpness = SHARP_EDGED

/datum/outfit/apostle
	name = "Apostle"
	suit = /obj/item/clothing/suit/armor/apostle
	mask = /obj/item/clothing/mask/gas/apostle

/datum/outfit/apostle_heretic
	mask = /obj/item/clothing/mask/gas/apostle

/datum/outfit/apostle/scythe
	name = "Apostle Scythe"
	r_hand = /obj/item/nullrod/scythe/apostle
