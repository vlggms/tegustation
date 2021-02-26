//Jumpsuit
/obj/item/clothing/under/rank/engineering/void
	desc = "It's a grey jumpsuit worn by those that love the void."
	name = "void technician's jumpsuit"
	worn_icon = 'ModularTegustation/Teguicons/kirie_stuff/voidtech.dmi'
	icon_state = "voidtech"
	icon = 'ModularTegustation/Teguicons/kirie_stuff/voidtech_icon.dmi'
	inhand_icon_state = "engi_suit"
	armor = list(MELEE = 0, BULLET = 0, LASER = 0,ENERGY = 0, BOMB = 0, BIO = 0, RAD = 0, FIRE = 30, ACID = 10)
	resistance_flags = NONE


//Voidtech hardsuit
/obj/item/clothing/head/helmet/space/hardsuit/voidtech
	name = "voidtech hardsuit helmet"
	desc = "A special helmet designed for work in a hazardous, low-pressure environment. Trades all protection for speed."
	worn_icon = 'ModularTegustation/Teguicons/kirie_stuff/voidtech.dmi'
	icon_state = "hardsuit0-voidtech"
	icon = 'ModularTegustation/Teguicons/kirie_stuff/voidtech_icon.dmi'
	inhand_icon_state = "eng_helm"
	armor = list(MELEE = 20, BULLET = 5, LASER = 5, ENERGY = 5, BOMB = 10, BIO = 100, RAD = 15, FIRE = 100, ACID = 30, WOUND = 10)
	hardsuit_type = "voidtech"

/obj/item/clothing/suit/space/hardsuit/voidtech
	name = "voidtech hardsuit"
	desc = "A special suit that protects against hazardous, low pressure environments. Trades all protection for speed."
	worn_icon = 'ModularTegustation/Teguicons/kirie_stuff/voidtech.dmi'
	icon_state = "hardsuit-voidtech"
	icon = 'ModularTegustation/Teguicons/kirie_stuff/voidtech_icon.dmi'
	inhand_icon_state = "eng_hardsuit"
	armor = list(MELEE = 20, BULLET = 5, LASER = 5, ENERGY = 5, BOMB = 10, BIO = 100, RAD = 15, FIRE = 100, ACID = 30, WOUND = 10)
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/voidtech
	slowdown = 0.35


//Special Subspace Headset
/obj/item/radio/headset/subspace
	name = "subspace headset"
	desc = "A headset made with special tech in mind to explore deep space. A rarity around these parts"
	icon_state = "subspace_headset"
	icon = 'ModularTegustation/Teguicons/kirie_stuff/voidtech_icon.dmi'
	keyslot = new /obj/item/encryptionkey/headset_eng
	subspace_transmission = TRUE