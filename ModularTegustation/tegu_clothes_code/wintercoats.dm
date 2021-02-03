// HEAD OF STAFF WINTER COATS
// Sprites designed by Papaporo Paprito, code done by Cosmic Phoenix.

/obj/item/clothing/suit/hooded/wintercoat/security/head
	name = "\improper Head of Security's winter coat"
	desc = "This is the Head of Security's personal winter coat. Although it looks like a normal coat, it actually has armor woven inside."
	icon = 'ModularTegustation/Teguicons/phoenix_nest/wintercoats_icons.dmi'
	worn_icon = 'ModularTegustation/Teguicons/phoenix_nest/wintercoats.dmi'
	icon_state = "wintercoat_hos"
	inhand_icon_state = "wintercoat_hos"
	lefthand_file = 'ModularTegustation/Teguicons/phoenix_nest/wintercoat_lefthand.dmi'
	righthand_file = 'ModularTegustation/Teguicons/phoenix_nest/wintercoat_righthand.dmi'
	armor = list("melee" = 30, "bullet" = 30, "laser" = 30, "energy" = 10, "bomb" = 25, "bio" = 0, "rad" = 0, "fire" = 70, "acid" = 90) // Same as the HoS trench coat
	cold_protection = CHEST|GROIN|LEGS|ARMS // Alright, so *technically* the coat doesn't actually cover the legs, but this has to be as good as the HoS trench coat otherwise it will never be used.
	heat_protection = CHEST|GROIN|LEGS|ARMS // This may or may not kill the game.
	strip_delay = 80 // Anti-ERP Technology
	hoodtype = /obj/item/clothing/head/hooded/winterhood/security/head

/obj/item/clothing/head/hooded/winterhood/security/head
	worn_icon = 'ModularTegustation/Teguicons/phoenix_nest/wintercoats.dmi'
	icon = 'ModularTegustation/Teguicons/phoenix_nest/wintercoathoods.dmi'
	icon_state = "winterhood_hos"


/obj/item/clothing/suit/hooded/wintercoat/medical/head
	name = "\improper Chief Medical Officer's winter coat"
	desc = "This is the Chief Medical Officer's personal winter coat."
	icon = 'ModularTegustation/Teguicons/phoenix_nest/wintercoats_icons.dmi'
	worn_icon = 'ModularTegustation/Teguicons/phoenix_nest/wintercoats.dmi'
	icon_state = "wintercoat_cmo"
	inhand_icon_state = "wintercoat_cmo"
	lefthand_file = 'ModularTegustation/Teguicons/phoenix_nest/wintercoat_lefthand.dmi'
	righthand_file = 'ModularTegustation/Teguicons/phoenix_nest/wintercoat_righthand.dmi'
	allowed = list(/obj/item/analyzer, /obj/item/sensor_device, /obj/item/stack/medical, /obj/item/dnainjector, /obj/item/reagent_containers/dropper, /obj/item/reagent_containers/syringe, /obj/item/reagent_containers/hypospray, /obj/item/healthanalyzer, /obj/item/flashlight/pen, /obj/item/reagent_containers/glass/bottle, /obj/item/reagent_containers/glass/beaker, /obj/item/reagent_containers/pill, /obj/item/storage/pill_bottle, /obj/item/paper, /obj/item/melee/classic_baton/telescopic, /obj/item/toy, /obj/item/storage/fancy/cigarettes, /obj/item/lighter, /obj/item/tank/internals/emergency_oxygen, /obj/item/tank/internals/plasmaman, /obj/item/assembly/flash/handheld)
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 50, "rad" = 0, "fire" = 50, "acid" = 50) // Same as CMO's labcoat.
	hoodtype = /obj/item/clothing/head/hooded/winterhood/medical/head

/obj/item/clothing/head/hooded/winterhood/medical/head
	worn_icon = 'ModularTegustation/Teguicons/phoenix_nest/wintercoats.dmi'
	icon = 'ModularTegustation/Teguicons/phoenix_nest/wintercoathoods.dmi'
	icon_state = "winterhood_cmo"


/obj/item/clothing/suit/hooded/wintercoat/science/head
	name = "\improper Research Director's winter coat"
	desc = "This is the Research Director's personal winter coat."
	icon = 'ModularTegustation/Teguicons/phoenix_nest/wintercoats_icons.dmi'
	worn_icon = 'ModularTegustation/Teguicons/phoenix_nest/wintercoats.dmi'
	icon_state = "wintercoat_rd"
	inhand_icon_state = "wintercoat_rd"
	lefthand_file = 'ModularTegustation/Teguicons/phoenix_nest/wintercoat_lefthand.dmi'
	righthand_file = 'ModularTegustation/Teguicons/phoenix_nest/wintercoat_righthand.dmi'
	allowed = list(/obj/item/analyzer, /obj/item/stack/medical, /obj/item/dnainjector, /obj/item/reagent_containers/dropper, /obj/item/reagent_containers/syringe, /obj/item/reagent_containers/hypospray, /obj/item/healthanalyzer, /obj/item/flashlight/pen, /obj/item/reagent_containers/glass/bottle, /obj/item/reagent_containers/glass/beaker, /obj/item/reagent_containers/pill, /obj/item/storage/pill_bottle, /obj/item/paper, /obj/item/melee/classic_baton/telescopic, /obj/item/toy, /obj/item/storage/fancy/cigarettes, /obj/item/lighter, /obj/item/tank/internals/emergency_oxygen, /obj/item/tank/internals/plasmaman, /obj/item/assembly/flash/handheld)
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 10, "bio" = 40, "rad" = 0, "fire" = 40, "acid" = 40) // -10 from normal labcoat, +10 to bomb from Sci winter coat.
	hoodtype = /obj/item/clothing/head/hooded/winterhood/science/head

/obj/item/clothing/head/hooded/winterhood/science/head
	worn_icon = 'ModularTegustation/Teguicons/phoenix_nest/wintercoats.dmi'
	icon = 'ModularTegustation/Teguicons/phoenix_nest/wintercoathoods.dmi'
	icon_state = "winterhood_rd"

/obj/item/clothing/suit/hooded/wintercoat/engineering/head
	name = "\improper Chief Engineer's winter coat"
	desc = "This is the Chief Engineer's personal winter coat."
	icon = 'ModularTegustation/Teguicons/phoenix_nest/wintercoats_icons.dmi'
	worn_icon = 'ModularTegustation/Teguicons/phoenix_nest/wintercoats.dmi'
	icon_state = "wintercoat_ce"
	inhand_icon_state = "wintercoat_ce"
	lefthand_file = 'ModularTegustation/Teguicons/phoenix_nest/wintercoat_lefthand.dmi'
	righthand_file = 'ModularTegustation/Teguicons/phoenix_nest/wintercoat_righthand.dmi'
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 40, "fire" = 30, "acid" = 45) // 20 extra rad protection. Why not?
	allowed = list(/obj/item/flashlight, /obj/item/assembly/flash/handheld, /obj/item/melee/classic_baton/telescopic, /obj/item/tank/internals/emergency_oxygen, /obj/item/tank/internals/plasmaman, /obj/item/t_scanner, /obj/item/construction/rcd, /obj/item/pipe_dispenser, /obj/item/toy, /obj/item/storage/fancy/cigarettes, /obj/item/lighter)
	hoodtype = /obj/item/clothing/head/hooded/winterhood/engineering/head

/obj/item/clothing/head/hooded/winterhood/engineering/head
	worn_icon = 'ModularTegustation/Teguicons/phoenix_nest/wintercoats.dmi'
	icon = 'ModularTegustation/Teguicons/phoenix_nest/wintercoathoods.dmi'
	icon_state = "winterhood_ce"


/obj/item/clothing/suit/hooded/wintercoat/captain/hop
	name = "\improper Head of Personel's winter coat"
	desc = "This is the Head of Personel's personal winter coat. It has a small armor vest woven inside."
	icon = 'ModularTegustation/Teguicons/phoenix_nest/wintercoats_icons.dmi'
	worn_icon = 'ModularTegustation/Teguicons/phoenix_nest/wintercoats.dmi'
	icon_state = "wintercoat_hop"
	inhand_icon_state = "wintercoat_hop"
	lefthand_file = 'ModularTegustation/Teguicons/phoenix_nest/wintercoat_lefthand.dmi'
	righthand_file = 'ModularTegustation/Teguicons/phoenix_nest/wintercoat_righthand.dmi'
	armor = list("melee" = 25, "bullet" = 25, "laser" = 25, "energy" = 10, "bomb" = 25, "bio" = 0, "rad" = 0, "fire" = 50, "acid" = 50) // Weaker armor vest. (-5% Melee, Bullet, Laser)
	hoodtype = /obj/item/clothing/head/hooded/winterhood/captain/hop

/obj/item/clothing/head/hooded/winterhood/captain/hop
	worn_icon = 'ModularTegustation/Teguicons/phoenix_nest/wintercoats.dmi'
	icon = 'ModularTegustation/Teguicons/phoenix_nest/wintercoathoods.dmi'
	icon_state = "winterhood_hop"

/obj/item/clothing/suit/hooded/wintercoat/cargo/head
	name = "\improper Quartermaster's cargo winter coat"
	desc = "It's just a regular cargo winter coat... it seems the Quarter Master still isn't a head of staff..."

/* Commented out for now. This'll go into the QM's locker on Halloween or something.
/obj/item/clothing/suit/cardborg/qm
	name = "\improper Quarter Master's hardsuit"
	desc = "Might as well make your own hardsuit if CentCom won't give you one."
*/

//this starts Homingpenguins' section of winter coat code.
//Sprites made by Jo, YouTubeBoy, HomingPenguins, and BeardlessJo
//code done by Homingpenguins.

/obj/item/clothing/suit/hooded/wintercoat/security/lawyer
	name = "\improper Lawyer's winter coat"
	desc = "This is a winter coat custom tailored for the lawyer."
	icon = 'ModularTegustation/Teguicons/Penguins_cove/Winter_Coat_Pile/wintercoats_icons.dmi'
	worn_icon = 'ModularTegustation/Teguicons/Penguins_cove/Winter_Coat_Pile/wintercoats.dmi'
	icon_state = "wintercoat_law"
	inhand_icon_state = "wintercoat_law"
	lefthand_file = 'ModularTegustation/Teguicons/Penguins_cove/Winter_Coat_Pile/wintercoat_lefthand.dmi'
	righthand_file = 'ModularTegustation/Teguicons/Penguins_cove/Winter_Coat_Pile/wintercoat_righthand.dmi'
	allowed = list(/obj/item/flashlight, /obj/item/tank/internals/emergency_oxygen, /obj/item/tank/internals/plasmaman, /obj/item/toy, /obj/item/storage/fancy/cigarettes, /obj/item/lighter)
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	hoodtype = /obj/item/clothing/head/hooded/winterhood/security/law

/obj/item/clothing/head/hooded/winterhood/security/law
	worn_icon = 'ModularTegustation/Teguicons/Penguins_cove/Winter_Coat_Pile/wintercoats.dmi'
	icon = 'ModularTegustation/Teguicons/Penguins_cove/Winter_Coat_Pile/wintercoathoods.dmi'
	icon_state = "winterhood_law"

/obj/item/clothing/suit/hooded/wintercoat/service/bartender
	name = "\improper Bartender's winter coat"
	desc = "This is a winter coat made to look like a butler's suit."
	icon = 'ModularTegustation/Teguicons/Penguins_cove/Winter_Coat_Pile/wintercoats_icons.dmi'
	worn_icon = 'ModularTegustation/Teguicons/Penguins_cove/Winter_Coat_Pile/wintercoats.dmi'
	icon_state = "wintercoat_bar"
	inhand_icon_state = "wintercoat_bar"
	lefthand_file = 'ModularTegustation/Teguicons/Penguins_cove/Winter_Coat_Pile/wintercoat_lefthand.dmi'
	righthand_file = 'ModularTegustation/Teguicons/Penguins_cove/Winter_Coat_Pile/wintercoat_righthand.dmi'
	allowed = list(/obj/item/flashlight, /obj/item/tank/internals/emergency_oxygen, /obj/item/tank/internals/plasmaman, /obj/item/toy, /obj/item/storage/fancy/cigarettes, /obj/item/lighter)
	armor = list("melee" = 10, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	hoodtype = /obj/item/clothing/head/hooded/winterhood/service/bar

/obj/item/clothing/head/hooded/winterhood/service/bar
	worn_icon = 'ModularTegustation/Teguicons/Penguins_cove/Winter_Coat_Pile/wintercoats.dmi'
	icon = 'ModularTegustation/Teguicons/Penguins_cove/Winter_Coat_Pile/wintercoathoods.dmi'
	icon_state = "winterhood_bar"

/obj/item/clothing/suit/hooded/wintercoat/medical/chem
	name = "\improper Chemist's winter coat"
	desc = "This is a winter coat made to protect from minor chemical spills and to have a stylish orange theme."
	icon = 'ModularTegustation/Teguicons/Penguins_cove/Winter_Coat_Pile/wintercoats_icons.dmi'
	worn_icon = 'ModularTegustation/Teguicons/Penguins_cove/Winter_Coat_Pile/wintercoats.dmi'
	icon_state = "wintercoat_chem"
	inhand_icon_state = "wintercoat_chem"
	lefthand_file = 'ModularTegustation/Teguicons/Penguins_cove/Winter_Coat_Pile/wintercoat_lefthand.dmi'
	righthand_file = 'ModularTegustation/Teguicons/Penguins_cove/Winter_Coat_Pile/wintercoat_righthand.dmi'
	allowed = list(/obj/item/analyzer, /obj/item/stack/medical, /obj/item/dnainjector, /obj/item/reagent_containers/dropper, /obj/item/reagent_containers/syringe, /obj/item/reagent_containers/hypospray, /obj/item/healthanalyzer, /obj/item/flashlight/pen, /obj/item/reagent_containers/glass/bottle, /obj/item/reagent_containers/glass/beaker, /obj/item/reagent_containers/pill, /obj/item/storage/pill_bottle, /obj/item/paper, /obj/item/melee/classic_baton/telescopic, /obj/item/soap, /obj/item/sensor_device, /obj/item/tank/internals/emergency_oxygen, /obj/item/tank/internals/plasmaman)
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 50, "rad" = 0, "fire" = 50, "acid" = 50)
	hoodtype = /obj/item/clothing/head/hooded/winterhood/medical/chem

/obj/item/clothing/head/hooded/winterhood/medical/chem
	worn_icon = 'ModularTegustation/Teguicons/Penguins_cove/Winter_Coat_Pile/wintercoats.dmi'
	icon = 'ModularTegustation/Teguicons/Penguins_cove/Winter_Coat_Pile/wintercoathoods.dmi'
	icon_state = "winterhood_chem"

/obj/item/clothing/suit/hooded/wintercoat/medical/gen
	name = "\improper Geneticist's winter coat"
	desc = "This winter coat is made out of a comfortable material and dyed to the geneticist's color scheme."
	icon = 'ModularTegustation/Teguicons/Penguins_cove/Winter_Coat_Pile/wintercoats_icons.dmi'
	worn_icon = 'ModularTegustation/Teguicons/Penguins_cove/Winter_Coat_Pile/wintercoats.dmi'
	icon_state = "wintercoat_gen"
	inhand_icon_state = "wintercoat_gen"
	lefthand_file = 'ModularTegustation/Teguicons/Penguins_cove/Winter_Coat_Pile/wintercoat_lefthand.dmi'
	righthand_file = 'ModularTegustation/Teguicons/Penguins_cove/Winter_Coat_Pile/wintercoat_righthand.dmi'
	allowed = list(/obj/item/analyzer, /obj/item/stack/medical, /obj/item/dnainjector, /obj/item/reagent_containers/dropper, /obj/item/reagent_containers/syringe, /obj/item/reagent_containers/hypospray, /obj/item/healthanalyzer, /obj/item/flashlight/pen, /obj/item/reagent_containers/glass/bottle, /obj/item/reagent_containers/glass/beaker, /obj/item/reagent_containers/pill, /obj/item/storage/pill_bottle, /obj/item/paper, /obj/item/melee/classic_baton/telescopic, /obj/item/soap, /obj/item/sensor_device, /obj/item/tank/internals/emergency_oxygen, /obj/item/tank/internals/plasmaman)
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 50, "rad" = 0, "fire" = 50, "acid" = 50)
	hoodtype = /obj/item/clothing/head/hooded/winterhood/medical/gen

/obj/item/clothing/head/hooded/winterhood/medical/gen
	worn_icon = 'ModularTegustation/Teguicons/Penguins_cove/Winter_Coat_Pile/wintercoats.dmi'
	icon = 'ModularTegustation/Teguicons/Penguins_cove/Winter_Coat_Pile/wintercoathoods.dmi'
	icon_state = "winterhood_gen"

/obj/item/clothing/suit/hooded/wintercoat/sec/pris
	name = "\improper Prisioner's winter coat"
	desc = "Made just for the times when the prison runs out of working space heaters."
	icon = 'ModularTegustation/Teguicons/Penguins_cove/Winter_Coat_Pile/wintercoats_icons.dmi'
	worn_icon = 'ModularTegustation/Teguicons/Penguins_cove/Winter_Coat_Pile/wintercoats.dmi'
	icon_state = "wintercoat_pris"
	inhand_icon_state = "wintercoat_pris"
	lefthand_file = 'ModularTegustation/Teguicons/Penguins_cove/Winter_Coat_Pile/wintercoat_lefthand.dmi'
	righthand_file = 'ModularTegustation/Teguicons/Penguins_cove/Winter_Coat_Pile/wintercoat_righthand.dmi'
	allowed = list(/obj/item/paper, /obj/item/soap, /obj/item/tank/internals/emergency_oxygen, /obj/item/tank/internals/plasmaman)
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	hoodtype = /obj/item/clothing/head/hooded/winterhood/sec/pris

/obj/item/clothing/head/hooded/winterhood/sec/pris
	worn_icon = 'ModularTegustation/Teguicons/Penguins_cove/Winter_Coat_Pile/wintercoats.dmi'
	icon = 'ModularTegustation/Teguicons/Penguins_cove/Winter_Coat_Pile/wintercoathoods.dmi'
	icon_state = "winterhood_pris"

/obj/item/clothing/suit/hooded/wintercoat/med/para
	name = "\improper Paramedic's winter coat"
	desc = "Comfy alternitive to the paramedic's vest."
	icon = 'ModularTegustation/Teguicons/Penguins_cove/Winter_Coat_Pile/wintercoats_icons.dmi'
	worn_icon = 'ModularTegustation/Teguicons/Penguins_cove/Winter_Coat_Pile/wintercoats.dmi'
	icon_state = "wintercoat_para"
	inhand_icon_state = "wintercoat_para"
	lefthand_file = 'ModularTegustation/Teguicons/Penguins_cove/Winter_Coat_Pile/wintercoat_lefthand.dmi'
	righthand_file = 'ModularTegustation/Teguicons/Penguins_cove/Winter_Coat_Pile/wintercoat_righthand.dmi'
	allowed = list(/obj/item/analyzer, /obj/item/stack/medical, /obj/item/dnainjector, /obj/item/reagent_containers/dropper, /obj/item/reagent_containers/syringe, /obj/item/reagent_containers/hypospray, /obj/item/healthanalyzer, /obj/item/flashlight/pen, /obj/item/reagent_containers/glass/bottle, /obj/item/reagent_containers/glass/beaker, /obj/item/reagent_containers/pill, /obj/item/storage/pill_bottle, /obj/item/paper, /obj/item/melee/classic_baton/telescopic, /obj/item/soap, /obj/item/sensor_device, /obj/item/tank/internals/emergency_oxygen, /obj/item/tank/internals/plasmaman)
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 50, "rad" = 0, "fire" = 50, "acid" = 50)
	hoodtype = /obj/item/clothing/head/hooded/winterhood/med/para

/obj/item/clothing/head/hooded/winterhood/med/para
	worn_icon = 'ModularTegustation/Teguicons/Penguins_cove/Winter_Coat_Pile/wintercoats.dmi'
	icon = 'ModularTegustation/Teguicons/Penguins_cove/Winter_Coat_Pile/wintercoathoods.dmi'
	icon_state = "winterhood_para"

//Commented out because of the terrible mining coat sprite i have.
//Will fix when i get a better sprite for it
/*/obj/item/clothing/suit/hooded/explorer/wintercoat/cargo/mining
	name = "\improper Mining winter coat"
	desc = "Comfy alternitive to the explorer's suit. Comes with all the feature's that it does."
	icon = 'ModularTegustation/Teguicons/Penguins_cove/Winter_Coat_Pile/wintercoats.dmi'
	worn_icon = 'ModularTegustation/Teguicons/Penguins_cove/Winter_Coat_Pile/wintercoats.dmi'
	icon_state = "wintercoat_min"
	item_state = "wintercoat_min"
	lefthand_file = 'ModularTegustation/Teguicons/Penguins_cove/Winter_Coat_Pile/wintercoat_lefthand.dmi'
	righthand_file = 'ModularTegustation/Teguicons/Penguins_cove/Winter_Coat_Pile/wintercoat_righthand.dmi'
	hoodtype = /obj/item/clothing/head/hooded/explorer/wintercoat/cargo/mining

/obj/item/clothing/head/hooded/explorer/wintercoat/cargo/mining
	worn_icon = 'ModularTegustation/Teguicons/Penguins_cove/Winter_Coat_Pile/wintercoats.dmi'
	icon = 'ModularTegustation/Teguicons/Penguins_cove/Winter_Coat_Pile/wintercoathoods.dmi'
	icon_state = "winterhood_min"
*/

/obj/item/clothing/suit/hooded/wintercoat/service/chap
	name = "\improper Chaplins's winter coat"
	desc = "Warm, Stylish, approved by the church. Everything you need in a winter coat."
	icon = 'ModularTegustation/Teguicons/Penguins_cove/Winter_Coat_Pile/wintercoats_icons.dmi'
	worn_icon = 'ModularTegustation/Teguicons/Penguins_cove/Winter_Coat_Pile/wintercoats.dmi'
	icon_state = "wintercoat_chap"
	inhand_icon_state = "wintercoat_chap"
	lefthand_file = 'ModularTegustation/Teguicons/Penguins_cove/Winter_Coat_Pile/wintercoat_lefthand.dmi'
	righthand_file = 'ModularTegustation/Teguicons/Penguins_cove/Winter_Coat_Pile/wintercoat_righthand.dmi'
	allowed = list(/obj/item/analyzer, /obj/item/stack/medical, /obj/item/dnainjector, /obj/item/reagent_containers/dropper, /obj/item/reagent_containers/syringe, /obj/item/reagent_containers/hypospray, /obj/item/healthanalyzer, /obj/item/flashlight/pen, /obj/item/reagent_containers/glass/bottle, /obj/item/reagent_containers/glass/beaker, /obj/item/reagent_containers/pill, /obj/item/storage/pill_bottle, /obj/item/paper, /obj/item/melee/classic_baton/telescopic, /obj/item/soap, /obj/item/sensor_device, /obj/item/tank/internals/emergency_oxygen, /obj/item/tank/internals/plasmaman)
	armor = list("melee" = 5, "bullet" = 0, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	hoodtype = /obj/item/clothing/head/hooded/winterhood/service/chap

/obj/item/clothing/head/hooded/winterhood/service/chap
	worn_icon = 'ModularTegustation/Teguicons/Penguins_cove/Winter_Coat_Pile/wintercoats.dmi'
	icon = 'ModularTegustation/Teguicons/Penguins_cove/Winter_Coat_Pile/wintercoathoods.dmi'
	icon_state = "winterhood_chap"

