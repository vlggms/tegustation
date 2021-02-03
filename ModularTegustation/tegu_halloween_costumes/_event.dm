/datum/round_event_control/halloween_costumes
	name = "Halloween Costume Drop"
	holidayID = HALLOWEEN
	typepath = /datum/round_event/halloween_costumes
	weight = 80 //super likely to happen
	min_players = 1
	max_occurrences = 1

/datum/round_event/halloween_costumesS
	fakeable = FALSE

/datum/round_event/halloween_costumes/start()
	var/list/plasma_costumes = list()
	for(var/datum/outfit/halloween/B in subtypesof(/datum/outfit/halloween))
		var/datum/outfit/halloween/P = new B
		if(P.plasma_compatible)
			plasma_costumes += P
	for(var/mob/living/carbon/human/H in GLOB.player_list)
		if(H.stat == DEAD || !(H.client))
			return
		if(isplasmaman(H))
			var/datum/outfit/halloween/J = pick(plasma_costumes)
			var/datum/outfit/halloween/G = new J
			if(G.uniform != null)
				new G.uniform(get_turf(H))
			if(G.suit != null)
				new G.suit(get_turf(H))
			if(G.back != null)
				new G.back(get_turf(H))
			if(G.belt != null)
				new G.belt(get_turf(H))
			if(G.gloves != null)
				new G.gloves(get_turf(H))
			if(G.shoes != null)
				new G.shoes(get_turf(H))
			if(G.head != null)
				new G.head(get_turf(H))
			if(G.mask != null)
				new G.mask(get_turf(H))
			if(G.neck != null)
				new G.neck(get_turf(H))
			if(G.ears != null)
				new G.ears(get_turf(H))
			if(G.glasses != null)
				new G.glasses(get_turf(H))
			if(G.id != null)
				new G.id(get_turf(H))
			if(G.l_pocket != null)
				new G.l_pocket(get_turf(H))
			if(G.r_pocket != null)
				new G.r_pocket(get_turf(H))
			if(G.suit_store != null)
				new G.suit_store(get_turf(H))
			if(G.r_hand != null)
				new G.r_hand(get_turf(H))
			if(G.l_hand != null)
				new G.l_hand(get_turf(H))
		else
			var/datum/outfit/halloween/J = pick(subtypesof(/datum/outfit/halloween))
			var/datum/outfit/halloween/G = new J
			if(G.uniform != null)
				new G.uniform(get_turf(H))
			if(G.suit != null)
				new G.suit(get_turf(H))
			if(G.back != null)
				new G.back(get_turf(H))
			if(G.belt != null)
				new G.belt(get_turf(H))
			if(G.gloves != null)
				new G.gloves(get_turf(H))
			if(G.shoes != null)
				new G.shoes(get_turf(H))
			if(G.head != null)
				new G.head(get_turf(H))
			if(G.mask != null)
				new G.mask(get_turf(H))
			if(G.neck != null)
				new G.neck(get_turf(H))
			if(G.ears != null)
				new G.ears(get_turf(H))
			if(G.glasses != null)
				new G.glasses(get_turf(H))
			if(G.id != null)
				new G.id(get_turf(H))
			if(G.l_pocket != null)
				new G.l_pocket(get_turf(H))
			if(G.r_pocket != null)
				new G.r_pocket(get_turf(H))
			if(G.suit_store != null)
				new G.suit_store(get_turf(H))
			if(G.r_hand != null)
				new G.r_hand(get_turf(H))
			if(G.l_hand != null)
				new G.l_hand(get_turf(H))
		playsound(get_turf(H),'sound/magic/summon_magic.ogg', 50, TRUE)

/datum/round_event/halloween_costumes/announce()
	priority_announce("To improve morale, we've utilized our Bluespace Wardrobe technology to send bulk halloween costumes over. Enjoy.", "Its Spooky Time")

