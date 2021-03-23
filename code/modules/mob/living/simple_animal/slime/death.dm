/mob/living/simple_animal/slime/death(gibbed)
	if(stat == DEAD)
		return

	if (transformeffects & SLIME_EFFECT_OIL) // TEGU EDIT
		for (var/i in 1 to rand(2,2 + cores))
			var/obj/item/slime_extract/item = new coretype(loc)
			if (transformeffects & SLIME_EFFECT_GOLD)
				item.sparkly = TRUE
		qdel(src)
		return

	if(!gibbed)
		if(is_adult)
			var/mob/living/simple_animal/slime/M = new(drop_location(), colour)
			M.rabid = TRUE
			M.regenerate_icons()

			is_adult = FALSE
			maxHealth = 150
			for(var/datum/action/innate/slime/reproduce/R in actions)
				R.Remove(src)
			var/datum/action/innate/slime/evolve/E = new
			E.Grant(src)
			revive(full_heal = TRUE, admin_revive = FALSE)
			regenerate_icons()
			update_name()
			return

	if(buckled)
		Feedstop(silent = TRUE) //releases ourselves from the mob we fed on.

	set_stat(DEAD)
	cut_overlays()

	return ..(gibbed)

/mob/living/simple_animal/slime/gib()
	death(TRUE)
	qdel(src)
