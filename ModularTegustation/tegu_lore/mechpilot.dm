//if you are kirie code you /probably/ should comment this out.

/obj/item/choice_beacon/mech
	name = "mecha pilot beacon"
	desc = "A beacon to be used to call down a mecha."

/obj/item/choice_beacon/mech/generate_display_names()
	var/static/list/mech_item_list
	if(!mech_item_list)
		mech_item_list = list()
		var/list/templist = typesof(/obj/vehicle/sealed/mecha/combat/pilot) //we have to convert type = name to name = type, how lovely!
		for(var/V in templist)
			var/atom/A = V
			mech_item_list[initial(A.name)] = A
	return mech_item_list

/obj/item/choice_beacon/spec/spawn_option(obj/choice,mob/living/M)
	new choice(get_turf(M))
	to_chat(M, "<span class='hear'>Please Stand by for titanfall.</span>")



/obj/vehicle/sealed/mecha/combat/pilot
	desc = "A lightweight, security exosuit. Popular among private and corporate security."
	name = "\improper Pilot Gygax"
	icon_state = "gygax"
	base_icon_state = "gygax"
	allow_diagonal_movement = TRUE
	movedelay = 2.6
	dir_in = 1 //Facing North.
	max_integrity = 150
	deflect_chance = 5
	armor = list(MELEE = 25, BULLET = 20, LASER = 30, ENERGY = 15, BOMB = 0, BIO = 0, RAD = 0, FIRE = 100, ACID = 100)
	max_temperature = 25000
	leg_overload_coeff = 80
	force = 14
	wreckage = /obj/structure/mecha_wreckage/gygax
	internal_damage_threshold = 35
	max_equip = 2
	step_energy_drain = 3


//credits to kire
