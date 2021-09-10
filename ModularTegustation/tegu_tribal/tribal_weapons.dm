
/obj/item/claymore/bone
	name = "Bone Sword"
	desc = "Jagged pieces of bone are tied to what looks like a goliaths femur."
	icon_state = "bone_sword"
	icon = 'ModularTegustation/Teguicons/teguitems.dmi'
	lefthand_file = 'ModularTegustation/Teguicons/tribal_inhands_left.dmi'
	lefthand_file = 'ModularTegustation/Teguicons/tribal_inhands_right.dmi'
	worn_icon = 'ModularTegustation/Teguicons/teguclothing_worn.dmi'
	force = 15
	throwforce = 10
	armour_penetration = 15
	block_chance = 30

/obj/item/shield/riot/goliath
	name = "Goliath shield"
	desc = "A shield made from interwoven plates of goliath hide."
	icon_state = "goliath_shield"
	icon = 'ModularTegustation/Teguicons/teguitems.dmi'
	lefthand_file = 'ModularTegustation/Teguicons/tribal_inhands_left.dmi'
	lefthand_file = 'ModularTegustation/Teguicons/tribal_inhands_right.dmi'
	worn_icon = 'ModularTegustation/Teguicons/teguclothing_worn.dmi'
	custom_materials = list()
	transparent = FALSE
	block_chance = 25
	max_integrity = 70
	w_class = WEIGHT_CLASS_BULKY

/obj/item/shield/riot/goliath/on_shield_block(mob/living/carbon/human/owner, atom/movable/hitby, attack_text = "the attack", damage = 0, attack_type = MELEE_ATTACK)
	if(isliving(hitby)) // If attacker is a simple mob.
		damage *= 0.5
	. = ..()

/obj/item/shield/riot/goliath/shatter(mob/living/carbon/human/owner)
	playsound(owner, 'sound/effects/bang.ogg', 50)
	new /obj/item/stack/sheet/animalhide/goliath_hide(get_turf(src))
	qdel(src)

/obj/item/gun/ballistic/bow/ashen
	name = "Bone Bow"
	desc = "Some sort of primitive projectile weapon made of bone and wrapped sinew."
	icon_state = "ashenbow"
	icon = 'ModularTegustation/Teguicons/tegu_guns.dmi'
	lefthand_file = 'ModularTegustation/Teguicons/tribal_inhands_left.dmi'
	lefthand_file = 'ModularTegustation/Teguicons/tribal_inhands_right.dmi'
	worn_icon = 'ModularTegustation/Teguicons/teguclothing_worn.dmi'
	inhand_icon_state = "ashenbow"
	worn_icon_state = "ashenbow"
	force = 8

/obj/item/gun/ballistic/bow/pipe
	name = "Pipe Bow"
	desc = "A crude projectile weapon made from silk string, pipe and lots of bending."
	icon = 'ModularTegustation/Teguicons/tegu_guns.dmi'
	lefthand_file = 'ModularTegustation/Teguicons/tribal_inhands_left.dmi'
	lefthand_file = 'ModularTegustation/Teguicons/tribal_inhands_right.dmi'
	worn_icon = 'ModularTegustation/Teguicons/teguclothing_worn.dmi'
	icon_state = "pipebow"
	inhand_icon_state = "pipebow"
	force = 7

/obj/item/restraints/legcuffs/bola/watcher //tribal bola for tribal lizards
	name = "watcher Bola"
	desc = "A Bola made from the stretchy sinew of fallen watchers."
	icon = 'ModularTegustation/Teguicons/teguitems.dmi'
	icon_state = "bola_watcher"
	breakouttime = 45

/obj/item/ammo_casing/caseless/arrow
	name = "arrow"
	desc = "An arrow made of... something. It's hella sharp."
	projectile_type = /obj/projectile/bullet/reusable/arrow
	caliber = "arrow"
	icon_state = "arrow"
	throwforce = 3 //good luck hitting someone with the pointy end of the arrow
	throw_speed = 3
	firing_effect_type = null
	flags_1 = NONE
	heavy_metal = FALSE

/obj/item/ammo_casing/caseless/arrow/wood
	name = "wooden arrow"
	desc = "An arrow made of wood, typically fired from a bow."
	projectile_type = /obj/projectile/bullet/reusable/arrow/wood

/obj/item/ammo_casing/caseless/arrow/ash
	name = "ashen arrow"
	desc = "An arrow made from wood, hardened by fire"
	icon_state = "ashenarrow"
	projectile_type = /obj/projectile/bullet/reusable/arrow/ash
	icon = 'ModularTegustation/Teguicons/teguitems.dmi'

/obj/item/ammo_casing/caseless/arrow/bone
	name = "bone arrow"
	desc = "An arrow made of bone and sinew. The tip is sharp enough to pierce goliath hide."
	icon_state = "bonearrow"
	projectile_type = /obj/projectile/bullet/reusable/arrow/bone
	icon = 'ModularTegustation/Teguicons/teguitems.dmi'

/obj/item/ammo_casing/caseless/arrow/bronze
	name = "bronze arrow"
	desc = "An arrow made from wood. tipped with bronze."
	icon_state = "bronzearrow"
	projectile_type = /obj/projectile/bullet/reusable/arrow/bronze
	icon = 'ModularTegustation/Teguicons/teguitems.dmi'
