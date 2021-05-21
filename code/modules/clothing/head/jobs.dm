//defines the drill hat's yelling setting
#define DRILL_DEFAULT	"default"
#define DRILL_SHOUTING	"shouting"
#define DRILL_YELLING	"yelling"
#define DRILL_CANADIAN	"canadian"

//Chef
/obj/item/clothing/head/chefhat
	name = "chef's hat"
	inhand_icon_state = "chef"
	icon_state = "chef"
	desc = "The commander in chef's head wear."
	strip_delay = 10
	equip_delay_other = 10
	dynamic_hair_suffix = ""
	pocket_storage_component_path = /datum/component/storage/concrete/pockets/chefhat
	dog_fashion = /datum/dog_fashion/head/chef
	///the chance that the movements of a mouse inside of this hat get relayed to the human wearing the hat
	var/mouse_control_probability = 20

/obj/item/clothing/head/chefhat/i_am_assuming_direct_control
	desc = "The commander in chef's head wear. Upon closer inspection, there seem to be dozens of tiny levers, buttons, dials, and screens inside of this hat. What the hell...?"
	mouse_control_probability = 100

/obj/item/clothing/head/chefhat/suicide_act(mob/user)
	user.visible_message("<span class='suicide'>[user] is donning [src]! It looks like [user.p_theyre()] trying to become a chef.</span>")
	user.say("Bork Bork Bork!", forced = "chef hat suicide")
	sleep(20)
	user.visible_message("<span class='suicide'>[user] climbs into an imaginary oven!</span>")
	user.say("BOOORK!", forced = "chef hat suicide")
	playsound(user, 'sound/machines/ding.ogg', 50, TRUE)
	return(FIRELOSS)

/obj/item/clothing/head/chefhat/relaymove(mob/living/user, direction)
	if(!istype(user, /mob/living/simple_animal/mouse) || !isliving(loc) || !prob(mouse_control_probability))
		return
	var/mob/living/L = loc
	if(L.incapacitated(TRUE)) //just in case
		return
	step_towards(L, get_step(L, direction))

//Captain
/obj/item/clothing/head/caphat
	name = "captain's hat"
	desc = "It's good being the king."
	icon_state = "captain"
	inhand_icon_state = "that"
	flags_inv = 0
	armor = list(MELEE = 25, BULLET = 15, LASER = 25, ENERGY = 35, BOMB = 25, BIO = 0, RAD = 0, FIRE = 50, ACID = 50, WOUND = 5)
	strip_delay = 60
	dog_fashion = /datum/dog_fashion/head/captain

/obj/item/clothing/head/beret/captain
	name = "captain beret"
	desc = "A lovely blue Captain beret with a gold and white insignia. Truly fit for only the finest officers."
	icon_state = "beret_captain"
	armor = list("melee" = 25, "bullet" = 15, "laser" = 25, "energy" = 35, "bomb" = 25, "bio" = 0, "rad" = 0, "fire" = 50, "acid" = 50)
	strip_delay = 90

//Captain: This is no longer space-worthy
/obj/item/clothing/head/caphat/parade
	name = "captain's parade cap"
	desc = "Worn only by Captains with an abundance of class."
	icon_state = "capcap"

	dog_fashion = null


//Head of Personnel
/obj/item/clothing/head/hopcap
	name = "head of personnel's cap"
	icon_state = "hopcap"
	desc = "The symbol of true bureaucratic micromanagement."
	armor = list(MELEE = 25, BULLET = 15, LASER = 25, ENERGY = 35, BOMB = 25, BIO = 0, RAD = 0, FIRE = 50, ACID = 50)
	dog_fashion = /datum/dog_fashion/head/hop

/obj/item/clothing/head/beret/hop
	name = "head of personnel beret"
	desc = "A lovely blue Head of Personnel's beret with a silver and white insignia. It smells faintly of paper and dogs."
	icon_state = "beret_hop"
	armor = list("melee" = 25, "bullet" = 15, "laser" = 25, "energy" = 35, "bomb" = 25, "bio" = 0, "rad" = 0, "fire" = 50, "acid" = 50)
	strip_delay = 90

/obj/item/clothing/head/beret/command
	name = "command beret"
	desc = "A modest blue command beret with a silver rank insignia. Smells of power and the sweat of assistants."
	icon_state = "beret_com"
	armor = list("melee" = 10, "bullet" = 5, "laser" = 10, "energy" = 15, "bomb" = 10, "bio" = 0, "rad" = 0, "fire" = 25, "acid" = 25)
	strip_delay = 90

//Chaplain
/obj/item/clothing/head/nun_hood
	name = "nun hood"
	desc = "Maximum piety in this star system."
	icon_state = "nun_hood"
	flags_inv = HIDEHAIR
	flags_cover = HEADCOVERSEYES

/obj/item/clothing/head/bishopmitre
	name = "bishop mitre"
	desc = "An opulent hat that functions as a radio to God. Or as a lightning rod, depending on who you ask."
	icon_state = "bishopmitre"

//Detective
/obj/item/clothing/head/fedora/det_hat
	name = "detective's fedora"
	desc = "There's only one man who can sniff out the dirty stench of crime, and he's likely wearing this hat."
	armor = list(MELEE = 25, BULLET = 5, LASER = 25, ENERGY = 35, BOMB = 0, BIO = 0, RAD = 0, FIRE = 30, ACID = 50, WOUND = 5)
	icon_state = "detective"
	var/candy_cooldown = 0
	pocket_storage_component_path = /datum/component/storage/concrete/pockets/small/fedora/detective
	dog_fashion = /datum/dog_fashion/head/detective

/obj/item/clothing/head/fedora/det_hat/Initialize()
	. = ..()
	new /obj/item/reagent_containers/food/drinks/flask/det(src)

/obj/item/clothing/head/fedora/det_hat/examine(mob/user)
	. = ..()
	. += "<span class='notice'>Alt-click to take a candy corn.</span>"

/obj/item/clothing/head/fedora/det_hat/AltClick(mob/user)
	. = ..()
	if(loc != user || !user.canUseTopic(src, BE_CLOSE, NO_DEXTERITY, FALSE, TRUE))
		return
	if(candy_cooldown < world.time)
		var/obj/item/food/candy_corn/CC = new /obj/item/food/candy_corn(src)
		user.put_in_hands(CC)
		to_chat(user, "<span class='notice'>You slip a candy corn from your hat.</span>")
		candy_cooldown = world.time+1200
	else
		to_chat(user, "<span class='warning'>You just took a candy corn! You should wait a couple minutes, lest you burn through your stash.</span>")

//Mime
/obj/item/clothing/head/beret
	name = "beret"
	desc = "A beret, a mime's favorite headwear."
	icon = 'ModularTegustation/Teguicons/head_item.dmi'
	worn_icon = 'ModularTegustation/Teguicons/head_worn.dmi'
	icon_state = "beret"
	dog_fashion = /datum/dog_fashion/head/beret //i think ian wearing any beret is broken, to test later
	dynamic_hair_suffix = ""

/obj/item/clothing/head/beret/vintage
	name = "vintage beret"
	desc = "A well-worn beret."
	icon_state = "vintageberet"
	dog_fashion = null

/obj/item/clothing/head/beret/archaic
	name = "archaic beret"
	desc = "An absolutely ancient beret, allegedly worn by the first mime to ever step foot on a Nanotrasen station."
	icon_state = "archaicberet"
	dog_fashion = null

/obj/item/clothing/head/beret/black
	name = "black beret"
	desc = "A black beret, perfect for war veterans and dark, brooding, anti-hero mimes."
	icon_state = "beretblack"

/obj/item/clothing/head/beret/highlander
	desc = "That was white fabric. <i>Was.</i>"
	dog_fashion = null //THIS IS FOR SLAUGHTER, NOT PUPPIES

/obj/item/clothing/head/beret/highlander/Initialize()
	. = ..()
	ADD_TRAIT(src, TRAIT_NODROP, HIGHLANDER)

/obj/item/clothing/head/beret/durathread
	name = "durathread beret"
	desc =  "A beret made from durathread, its resilient fibres provide some protection to the wearer."
	icon_state = "beretdurathread"
	armor = list(MELEE = 15, BULLET = 5, LASER = 15, ENERGY = 25, BOMB = 10, BIO = 0, RAD = 0, FIRE = 30, ACID = 5, WOUND = 4)

//Civilian

/obj/item/clothing/head/beret/grey
	name = "grey beret"
	desc =  "A standard grey beret. Why an assistant would need a beret is unknown."
	icon_state = "beret_grey"

/obj/item/clothing/head/beret/service
	name = "service beret"
	desc =  "A standard service beret. Held by those with the sanity to serve everyone else on the Nanotrasen stations."
	icon_state = "beret_serv"

/obj/item/clothing/head/beret/qm
	name = "quartermaster beret"
	desc =  "A cargo beret with a faded medal haphazardly stitched into it. Worn by a true cargonian, it commands respect from everyone."
	icon_state = "beret_qm"
	armor = list("melee" = 5, "bullet" = 5, "laser" = 5, "energy" = 5)

/obj/item/clothing/head/beret/cargo
	name = "cargo beret"
	desc =  "A slightly faded mustard yellow beret. Usually held by the members of cargonia."
	icon_state = "beret_cargo"

/obj/item/clothing/head/beret/mining
	name = "mining beret"
	desc =  "A grey beret with a pickaxe insignia sewn into it. Seems to be padded and fireproofed to offer the wearer some protection."
	icon_state = "beret_mining"
	armor = list("melee" = 25, "bullet" = 10, "laser" = 10, "energy" = 15, "bomb" = 30, "bio" = 100, "rad" = 50, "fire" = 50, "acid" = 50)


//Security

/obj/item/clothing/head/hos
	name = "head of security cap"
	desc = "The robust standard-issue cap of the Head of Security. For showing the officers who's in charge."
	icon_state = "hoscap"
	armor = list(MELEE = 40, BULLET = 30, LASER = 25, ENERGY = 35, BOMB = 25, BIO = 10, RAD = 0, FIRE = 50, ACID = 60, WOUND = 10)
	strip_delay = 80
	dynamic_hair_suffix = ""

/obj/item/clothing/head/hos/syndicate
	name = "syndicate cap"
	desc = "A black cap fit for a high ranking syndicate officer."

/obj/item/clothing/head/hos/beret
	name = "head of security beret"
	desc = "A robust beret for the Head of Security, for looking stylish while not sacrificing protection."
	icon_state = "hosberetblack"

/obj/item/clothing/head/hos/beret/syndicate
	name = "syndicate beret"
	desc = "A black beret with thick armor padding inside. Stylish and robust."

/obj/item/clothing/head/warden
	name = "warden's police hat"
	desc = "It's a special armored hat issued to the Warden of a security force. Protects the head from impacts."
	icon_state = "policehelm"
	armor = list(MELEE = 40, BULLET = 30, LASER = 30, ENERGY = 40, BOMB = 25, BIO = 0, RAD = 0, FIRE = 30, ACID = 60, WOUND = 6)
	strip_delay = 60
	dog_fashion = /datum/dog_fashion/head/warden

/obj/item/clothing/head/warden/drill
	name = "warden's campaign hat"
	desc = "A special armored campaign hat with the security insignia emblazoned on it. Uses reinforced fabric to offer sufficient protection."
	icon_state = "wardendrill"
	inhand_icon_state = "wardendrill"
	dog_fashion = null
	var/mode = DRILL_DEFAULT

/obj/item/clothing/head/warden/drill/screwdriver_act(mob/living/carbon/human/user, obj/item/I)
	if(..())
		return TRUE
	switch(mode)
		if(DRILL_DEFAULT)
			to_chat(user, "<span class='notice'>You set the voice circuit to the middle position.</span>")
			mode = DRILL_SHOUTING
		if(DRILL_SHOUTING)
			to_chat(user, "<span class='notice'>You set the voice circuit to the last position.</span>")
			mode = DRILL_YELLING
		if(DRILL_YELLING)
			to_chat(user, "<span class='notice'>You set the voice circuit to the first position.</span>")
			mode = DRILL_DEFAULT
		if(DRILL_CANADIAN)
			to_chat(user, "<span class='danger'>You adjust voice circuit but nothing happens, probably because it's broken.</span>")
	return TRUE

/obj/item/clothing/head/warden/drill/wirecutter_act(mob/living/user, obj/item/I)
	..()
	if(mode != DRILL_CANADIAN)
		to_chat(user, "<span class='danger'>You broke the voice circuit!</span>")
		mode = DRILL_CANADIAN
	return TRUE

/obj/item/clothing/head/warden/drill/equipped(mob/M, slot)
	. = ..()
	if (slot == ITEM_SLOT_HEAD)
		RegisterSignal(M, COMSIG_MOB_SAY, .proc/handle_speech)
	else
		UnregisterSignal(M, COMSIG_MOB_SAY)

/obj/item/clothing/head/warden/drill/dropped(mob/M)
	. = ..()
	UnregisterSignal(M, COMSIG_MOB_SAY)

/obj/item/clothing/head/warden/drill/proc/handle_speech(datum/source, mob/speech_args)
	var/message = speech_args[SPEECH_MESSAGE]
	if(message[1] != "*")
		switch (mode)
			if(DRILL_SHOUTING)
				message += "!"
			if(DRILL_YELLING)
				message += "!!"
			if(DRILL_CANADIAN)
				message = " [message]"
				var/list/canadian_words = strings("canadian_replacement.json", "canadian")

				for(var/key in canadian_words)
					var/value = canadian_words[key]
					if(islist(value))
						value = pick(value)

					message = replacetextEx(message, " [uppertext(key)]", " [uppertext(value)]")
					message = replacetextEx(message, " [capitalize(key)]", " [capitalize(value)]")
					message = replacetextEx(message, " [key]", " [value]")

				if(prob(30))
					message += pick(", eh?", ", EH?")
		speech_args[SPEECH_MESSAGE] = message

/obj/item/clothing/head/beret/sec
	name = "security beret"
	desc = "A robust beret with the security insignia emblazoned on it. Uses reinforced fabric to offer sufficient protection."
	icon_state = "beret_officer"
	armor = list("melee" = 35, "bullet" = 30, "laser" = 30,"energy" = 40, "bomb" = 25, "bio" = 0, "rad" = 0, "fire" = 50, "acid" = 50)
	strip_delay = 60
	dog_fashion = null

/obj/item/clothing/head/beret/sec/navyhos
	name = "head of security's navy beret"
	desc = "A navy-colored beret with the Head of Security's insignia emblazoned on it. A symbol of excellence, a badge of courage, a mark of distinction."
	icon_state = "hosberet"
	armor = list("melee" = 40, "bullet" = 30, "laser" = 25, "energy" = 35, "bomb" = 25, "bio" = 10, "rad" = 0, "fire" = 50, "acid" = 60)

/obj/item/clothing/head/beret/sec/navyhos/black
	name = "head of security's black beret"
	desc = "A black beret with the Head of Security's insignia emblazoned on it. A symbol of excellence, a badge of courage, a mark of distinction."
	icon_state = "hosberetblack"

/obj/item/clothing/head/beret/sec/navywarden
	name = "warden's beret"
	desc = "A special beret with the Warden's insignia emblazoned on it. For wardens with class."
	icon_state = "wardenberet"
	armor = list(MELEE = 40, BULLET = 30, LASER = 30, ENERGY = 40, BOMB = 25, BIO = 0, RAD = 0, FIRE = 30, ACID = 50, WOUND = 6)
	strip_delay = 60

/obj/item/clothing/head/beret/sec/navyofficer
	desc = "A special beret with the security insignia emblazoned on it. For officers with class."
	icon_state = "officerberet"

/obj/item/clothing/head/beret/sec/centcom
	name = "centcom beret"
	desc = "A dark-green beret worn by CentCom officers and high-ranking soldiers."
	icon_state = "centberet"

//Science
/obj/item/clothing/head/beret/science
	name = "science beret"
	desc = "A purple beret with a silver science department insignia emblazoned on it. It has that authentic burning plasma smell."
	icon_state = "beret_sci"
	armor = list("rad" = 5, "bio" = 5, "fire" = 5)
	strip_delay = 60

/obj/item/clothing/head/beret/rd
	name = "research director beret"
	desc = "A purple beret with a golden science insignia emblazoned on it. It has that authentic burning plasma smell, with a hint of tritium."
	icon_state = "beret_rd"
	armor = list("rad" = 10, "bio" = 10, "fire" = 10)
	strip_delay = 60

//Engineering
/obj/item/clothing/head/beret/eng
	name = "engineering beret"
	desc = "A beret with the engineering insignia emblazoned on it. In parts a fashion statement and a hard hat."
	icon_state = "beret_engineering"
	armor = list("melee" = 15, "bullet" = 0, "laser" = 0, "energy" = 5, "bomb" = 10, "bio" = 0, "rad" = 5, "fire" = 30, "acid" = 5)
	strip_delay = 60

/obj/item/clothing/head/beret/eng/hazard
	name = "engineering hazardberet"
	desc = "A beret with the engineering insignia emblazoned on it. In parts a fashion statement and a hard hat. This one seems to be colored differently."
	icon_state = "beret_hazard_engineering"

/obj/item/clothing/head/beret/atmos
	name = "atmospherics beret"
	desc = "A beret for those who have shown immaculate proficienty in piping. Or plumbing. Mostly piping."
	icon_state = "beret_atmospherics"
	armor = list("rad" = 10, "fire" = 10)
	strip_delay = 60

/obj/item/clothing/head/beret/ce
	name = "chief engineer beret"
	desc = "A white beret with the engineering insignia emblazoned on it. Its owner knows what they're doing. Probably."
	icon_state = "beret_ce"
	armor = list("melee" = 15, "bullet" = 0, "laser" = 0, "energy" = 5, "bomb" = 10, "bio" = 0, "rad" = 30, "fire" = 30, "acid" = 5)
	strip_delay = 60

//Medical
/obj/item/clothing/head/beret/med
	name = "medical beret"
	desc = "A white beret with a blue cross finely threaded into it. It has that sterile smell about it."
	icon_state = "beret_med"
	armor = list("bio" = 20)
	strip_delay = 60

/obj/item/clothing/head/beret/chem
	name = "chemistry beret"
	desc = "A white beret with an orange insignia finely threaded into it. It smells of acid and ash."
	icon_state = "beret_chem"
	armor = list("acid" = 20)
	strip_delay = 60

/obj/item/clothing/head/beret/viro
	name = "virology beret"
	desc = "A white beret with a green insignia in the shape of a bacteria finely threaded into it. Smells unnaturally sterile..."
	icon_state = "beret_viro"
	armor = list("bio" = 30)
	strip_delay = 60

/obj/item/clothing/head/beret/cmo //the only true head
	name = "chief medical officer beret"
	desc = "A baby blue beret with the insignia of Medistan. It smells very sterile."
	icon_state = "beret_cmo"
	armor = list("bio" = 30, "acid" = 20)
	strip_delay = 60

//Curator
/obj/item/clothing/head/fedora/curator
	name = "treasure hunter's fedora"
	desc = "You got red text today kid, but it doesn't mean you have to like it."
	icon_state = "curator"

#undef DRILL_DEFAULT
#undef DRILL_SHOUTING
#undef DRILL_YELLING
#undef DRILL_CANADIAN
