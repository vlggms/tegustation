/obj/item/dark_bible
	name = "dark bible"
	desc = "The darkest of hearts, obtained from the beast made of light. Allows you to perform a ritual to allow other people wield apostle weaponry."
	icon = 'icons/Fulpicons/fulpitems.dmi'
	icon_state = "darkbible"
	item_flags = NOBLUDGEON
	w_class = WEIGHT_CLASS_NORMAL
	var/uses = 6
	var/audio_cd // To prevent sound abuse

/obj/item/dark_bible/afterattack(atom/target, mob/user, proximity_flag)
	. = ..()
	if(proximity_flag && ishuman(target))
		if(user != target)
			if(uses > 0 && audio_cd < world.time)
				var/mob/living/carbon/human/H = target
				if("apostle" in H.faction)
					to_chat(user, "<span class='info'>[H] is already empowered by dark light.</span>")
					return
				user.visible_message("<span class='info'>[user] puts hand on [H]'s shoulder, with [src] in the other hand and starts murmuring something.</span>", "<span class='warning'>You begin spelling the prayer to grant power to [H].</span>", \
				"<span class='hear'>You can hear sort of a prayer nearby.</span>")
				audio_cd = (world.time + 15 SECONDS)
				playsound(src, 'sound/tegu_sounds/antagonist/whisper.ogg', 50, 1)
				if(!do_after(user, 100))
					return
				uses -= 1
				H.faction |= "apostle"
				to_chat(user, "<span class='info'>You finish the prayer, and suddenly, [H] starts to glow witn an ominous light.</span>")
				to_chat(H, "<span class='info'>As soon as [user] finishes reading the prayer, you start glowing with an ominous light.</span>")
				H.set_light_color(COLOR_RED_LIGHT)
				H.set_light(2)
			else
				to_chat(user, "<span class='info'>Pages in [src] seem blank. Perhaps there will be use for it later?</span>")
		else
			to_chat(user, "<span class='info'>You can't offer a prayer for yourself!</span>")

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
	slowdown = 0.4

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
	force = 32
	throwforce = 15
	armour_penetration = 35
	block_chance = 50
	wound_bonus = 15
	bare_wound_bonus = 30
	sharpness = SHARP_EDGED

/obj/item/nullrod/scythe/apostle/attack(mob/living/target, mob/living/carbon/human/user)
	if(!("apostle" in user.faction))
		user.Paralyze(50)
		user.dropItemToGround(src, TRUE)
		user.visible_message("<span class='warning'>A powerful force shoves [user] away from [target]!</span>", \
				"<span class='danger'>\"You shall not attempt to harm us.\"</span>")
		return
	else
		if("apostle" in target.faction)
			to_chat(user, "<span class='userdanger'>Careful with the holy weapon...</span>")
			return
		if(target.health <= HEALTH_THRESHOLD_DEAD || target.stat == DEAD)
			user.changeNext_move(CLICK_CD_MELEE * 0.4) // Le funny destruction of corpses.
			user.heal_bodypart_damage(5,5) // Free heals.
	..()

/obj/item/gun/magic/staff/apostle
	name = "holy staff"
	desc = "Let none approach the holy one."
	icon_state = "staffofchaos"
	inhand_icon_state = "staffofchaos"
	ammo_type = /obj/item/ammo_casing/magic/arcane_barrage
	charges = 150
	max_charges = 150
	recharge_rate = 1
	burst_size = 15
	fire_delay = 1.5
	spread = 16
	var/charge_cooldown // To avoid sound spam.

/obj/item/gun/magic/staff/apostle/process_fire(atom/target, mob/living/user, message = TRUE, params = null, zone_override = "", bonus_spread = 0)
	if(!("apostle" in user.faction))
		user.Paralyze(50)
		user.dropItemToGround(src, TRUE)
		user.visible_message("<span class='warning'>A powerful force shoves [user] away from [target]!</span>", \
				"<span class='danger'>\"You shall not attempt to harm us.\"</span>")
		return
	if(charge_cooldown > world.time)
		to_chat(user, "<span class='warning'>You are not ready to charge the staff yet.</span>")
		return
	charge_cooldown = (world.time + 5 SECONDS)
	playsound(src, 'sound/tegu_sounds/antagonist/staff_charge.ogg', 150, 1)
	new /obj/effect/temp_visual/dir_setting/curse/grasp_portal/fading(target)
	user.visible_message("<span class='warning'>[user] points [src] towards [target]!</span>", "<span class='warning'>We start channeling the power of [src].</span>", \
	"<span class='hear'>You can hear an ominous buzzing.</span>")
	if(!do_after(user, 30))
		return
	return ..()

/datum/outfit/apostle
	name = "Apostle"
	suit = /obj/item/clothing/suit/armor/apostle
	mask = /obj/item/clothing/mask/gas/apostle

/datum/outfit/apostle_heretic
	mask = /obj/item/clothing/mask/gas/apostle
