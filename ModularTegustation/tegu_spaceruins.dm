
//This is varied code for many random space ruins for Tegustation
/*

Search and find code with this to help you port things:

FSS goes like this : Areas, Objects,Code., ETC

FSS1: Space shower
FSS2: Prototype Station
FSS3: DND Mansion
FSS4: Bio-Sphere

DATU: Datums for map templates
*/

// FSS1 : Space Shower

/obj/item/paper/crumpled/bloody/Newshowers
	name = "note"
	info = {"I certainly did not expect this<br>
	much blood from a simple shower-tile test.<br>
	Oh well, we have so many test subjects."}

/turf/open/floor/noslip/airless
	initial_gas_mix = AIRLESS_ATMOS

//FSS2: Prototype Station

/area/ruin/has_grav/prototype
	requires_power = TRUE
	outdoors = FALSE
	power_light = FALSE
	power_equip = FALSE
	power_environ = FALSE

/area/ruin/has_grav/DnDmansion
	requires_power = FALSE
	outdoors = FALSE
	power_light = TRUE
	power_equip = TRUE
	power_environ = TRUE

/area/ruin/has_grav/prototype/Captain
	name = "Prototype Captain's quarter"
	icon_state = "blue"

/area/ruin/has_grav/prototype/arrivals
	name = "Prototype Arrivals"
	icon_state = "hallP"

/area/ruin/has_grav/prototype/hallway
	name = "Prototype Main Hallway"
	icon_state = "hallS"

/area/ruin/has_grav/prototype/medsci
	name = "Prototype Med-Sci"
	icon_state = "green"

/area/ruin/has_grav/prototype/botany
	name = "Prototype Botany"
	icon_state = "garden"

/area/ruin/has_grav/prototype/engineering
	name = "Prototype Engineering"
	icon_state = "engi_storage"

/area/ruin/has_grav/prototype/solars
	name = "Prototype Solars"
	icon_state = "engi_storage"

/area/ruin/has_grav/prototype/kitchen
	name = "Prototype Kitchen"
	icon_state = "kitchen"

/area/ruin/has_grav/prototype/brig
	name = "Prototype Brig"
	icon_state = "maint_brig"

/area/ruin/has_grav/prototype/dorms
	name = "Prototype Dormitories"
	icon_state = "dorms"

/obj/item/book/story/ProtoStory
	icon = 'icons/obj/library.dmi'
	name = "Prototype Station diary"
	due_date = 0 // Game time in 1/10th seconds
	unique = 1   // 0 - Normal book, 1 - Should not be treated as normal book, unable to be copied, unable to be modified
	author = "Larry Senior"
	title = "Prototype station 13"
	dat = {"<html>
				<head>
				<style>
				h1 {font-size: 18px; margin: 15px 0px 5px;}
				h2 {font-size: 15px; margin: 15px 0px 5px;}
				ul {list-style: none; margin: 10px; padding: 0px;}
				ol {margin: 25px; padding: 2px 15px;}
				</style>
				</head>
				<body>
				<h3>Prototype station</h3>
				<span style="color:#80BFFF"><ol>By Larry Senior</ol></span style">
				<ol></ol>
				<strong><li>Preparations - Day 0.</li></strong>
				I can't believe I've been chosen for this project. Not only have I been selected the honor of building the maintenance system for this new station; but I also get to board it and be among the first to set foot on the secret project, Space station 13! I've had little preparation time as Nanostrasen only gave me twenty-four hours. As a result I've had no time to fly back and tell my mom where I'm going. Just a short phone call to my girlfriend was all I could manage before having to pack and do the final check-ups. I'll be meeting with the two others who are joining me on this expedition tomorrow. I can't sleep, Just knowing that the others in my dorm would kill to take my place is keeping me up at night.<br>
</br> I can't wait to get back home after all this is over with, I'm gonna be famous!
<ol></ol>
<strong><li>Launch - Day 1.</li></strong>
				I can barely write after a day like this. Launch was early and the verifications took hours. The station was in orbit around the asteroid as planned. A few of the solars had minimal damage, but otherwise this station was perfect. Getting to know my crewmates was the real highlight of the day.<br>
<br>
Captain Sonador is the son of one of Centcom's top officers. He's harsh, focused, and clearly an unloved child. He seems to be a fair leader so long as you know your shit and pull your weight. He knows about everything there is to know about plasma energy and seems to know a lot beyond that as well. There's also Shirley Greene; expert botanist, nutritionist, and part-time chemist. She's clearly terrified of the mission, I don't understand her. She should be exited!<br><br>
Our first day has been full of busy work like activating the gravity generator, testing each vent, and other forms of monotony. Tomorrow we're scheduled to set foot on the asteroid for the first time.
<ol></ol>
<strong><li>The boring day - Day 3.</li></strong>
We mostly stayed put and did nothing other than watch Shirley play around with plasma. She accidentally let some leak from the test tubes while it was still gasseous but that was resolved quickly. The Captain and I stayed put for a while and waited on our mining mechs to be delivered. At the behest of Central Command we were sent out into the asteroid to find a specimen from the Goliath species. Terrifying beasts the Goliaths were and try as we might to fail our mission we managed to find one of the damned things. It turned out to be a surprisingly near-sighted species as it didn't spot us, allowing us the time to observe and research it as ordered.<br><br>
We came home to a delicious new tomato breed. Shirley, for whatever reason, didn't seem happy and in fact refused to talk for much of the remaining day. When I asked her what was wrong she just ignored me, women are so strange sometimes.
<ol></ol>
<strong><li>Pain and stress - Day 4.</li></strong>
Early in the morning the Captain and I went back to the Goliath's nest. With his trusty laser pistol in hand he started to unload on the beast we'd been content with observing yesterday. Unfortunately the Goliath's poor sight played against me this time and it launched a flurry of it's tentacles right at me instead of the Captain. I had no armor, just a standard issue space suit, and as such the Goliath's tentacles nearly ripped my leg from it's socket. Evidently the captain had placed a bolt between it's eyes as I woke some time later in the recovery room in our meagre excuse for a medbay.<br><br>
That nanogel stuff is really amazing, I mean, really! I recall hearing the most sickening sound before blacking out and there I was sitting with a fully intact leg! After a short drink with the Captain I retired to my dorm, passing by Shirley on the way there. She barely noticed I was back. She blurted about how dangerous space was and I swear I saw a tear forming in her eyes, the poor girl was not enjoying this one bit. I tried talking vegetables with her in order to comfort her, which seemed to work, but I can still see the fear in her face. Space is not for everyone I guess.<ol></ol>
<strong><li>Recovery - Day 5.</li></strong>
This day could not have been worse if god both existed and conspired against us. First, the automated supply shuttle brought us a ton of stuff; which, per instructions, we were required to unpack and process individually before sending the crates back to the shuttle. This was so that we had ''Full stock'' each supply cycle, but it also meant moving back and forth in the station for hours on end. Nanostrasen really needs to work on it's policies.<br><br>
Shirley picked herself up and has made as much food as possible. She found out those special tomatoes she came up with have a intrinsic quantum field inside them. I had no idea botany could bring about such changes. This might make a teleporter possible in the future! Albeit it fruit powered one. Are tomatoes fruits or vegetables?<br><br>
At night the captain woke me up to have a drink in his cabin. He told me a bit about his current worries and what's worse, they weren't irrational fears. He had heard that a new group called the ''Syndicate'' had been trying to infiltrate Nanostrasen since before our launch. He received a report this morning that they had killed 3 employees of the Nanostrasen Shuttlecorps; the same division that arranged our supply shuttle yesterday and every day preceding. Reports are unsure but we do know the Syndicate used high explosives, emp technology, and high caliber guns to destroy most of the evidence. They are organised and they may or may not have the whereabouts about the project. At least they can't reach us all the way out here in space. I understand why the captain was so worried now. I need to stop writing this journal, it takes a lot of my pre-sleep time and I seem to get less and less of that with every growing day.<ol></ol>
<strong><li>6</li></strong>
I'm going to die. I'm going to try to be strong and write this with a steady hand. <br><br>
It was early morning and I was just about to get some coffee when the captain nearly jumped on top of me. He ordered me to duck, and boy I wish I had. I heard the explosion comming from the bridge, splintering the windows open. The explosion threw me off balance and I heard the door being forced open. A man in a red and black hardsuit pointed a gun at me and yelled for me to get down. The captain, however, was not in a cooperative mood. I watched as the bravest man I'd ever known leaped from the ground and grabbed his trusty laser pistol; he managed to fire off an expertly placed shot that nailed the intruder right between the eyes, killing him instantly. To my horror, the downed invader began to shudder violently before exploding violently. These people are truly monsters. After the shock of seeing this wore off I looked over towards the Captain, expecting to see him. Instead of seeing him alive and well I saw the last signs of life fading from him as another red and black clad man slit his throat with a wicked looking knife.  <br><br>
I cried out for mercy but all I got was a bullet to the shoulder and a knee in my chest. The bastard that murdered my Captain and friend was sitting on me now, knife and all. I regained my focus just to hear some shots in botany as well as Shirley screaming. I felt terrified, but at least I knew death would come for me in a moment. The man sitting on top of me raised his knife to impale my heart but got stopped by a third man; this one was dressed in pure black. He told the other to finish the job properly. The man on top of me finally raised me off the ground. He punched me square in the jaw and then threw me into the cell. He then pressed the button to close the door. I heard tools being fumbled with and before I knew it I saw the bolts locking me inside of that small room.<br><br>
I sat there for some hours, slowly bleeding out. Maybe it was luck or just god prolonging my suffering, but I did not die. After what seemed like a century of waiting and suffering the door bolts lifted and I saw the same man who nearly killed me walk in. He explained how his commander wanted me to tell Nanostrasen what happened so that they may be feared. He pricked me with a small autoinjector and told me that I would be stable for another few hours, and that I had best get to writing.<br><br>
The glass won't break. The pen is too small for suicide. I will die a lonely death. The Syndicate truly are the monsters they want people to believe they are. I would write longer, but the lights are giving up. I don't even have hope of a rescue team finding me. Maybe they'll come, but they won't find our corpses for weeks.<br><br>
There is no point for a testament, but maybe a confession is appropriate. I've never really loved anyone but myself. I've always worked myself to the bone to try and get a good position and stabbed as many backs as I could to do it. In this bitter end I find myself wishing I'd spent more time with my friends and family. Maybe by the time they find my body my brain will be in a shape that's capable of being cloned, I can only find solace in this. If that isn't the case then I say this now to whomever may happen upon this journal. Beware the Syndicate and their cruelty. And show the bastards no mercy if you have enough men to fight them off.
				</body>
				</html>
				"}


/obj/effect/mob_spawn/human/syndicate_engineer
	name = "Syndicate Engineer Corps"
	roundstart = FALSE
	death = FALSE
	random = TRUE
	mob_name = "Syndicate engineer"
	icon = 'icons/obj/machines/sleeper.dmi'
	icon_state = "sleeper_s"

	short_desc = "Syndicate engineer, You have been charged by your superiors to repair a derelict station."
	flavour_text = "You must ensure that the station can support human life. You're pretty sure nobody will disturb you here, yet you can't shake the feeling this job will be like no other."
	important_info = "Leaving the station is forbidden."
	outfit = /datum/outfit/syndicate_engineer
	assignedrole = "Syndicate Engineer"

/datum/outfit/syndicate_engineer
	name = "Syndicate Engineer"
	head = /obj/item/clothing/head/helmet/space/syndicate/black/engie
	mask = /obj/item/clothing/mask/breath
	uniform = /obj/item/clothing/under/syndicate
	suit = /obj/item/clothing/suit/space/syndicate/black/engie
	shoes = /obj/item/clothing/shoes/combat
	gloves = /obj/item/clothing/gloves/combat
	ears = /obj/item/radio/headset/syndicate/alt
	back = /obj/item/storage/backpack
	belt = /obj/item/storage/belt/utility/chief/full
	r_pocket = /obj/item/tank/internals/emergency_oxygen/engi
	internals_slot = ITEM_SLOT_DEX_STORAGE//SLOT_R_STORE
	id = /obj/item/card/id/syndicate/anyone
	implants = list(/obj/item/implant/weapons_auth)
	backpack_contents = list(/obj/item/storage/box/survival/syndie=1,\
		/obj/item/tank/jetpack/oxygen/harness=1,\
		/obj/item/gun/ballistic/automatic/pistol)

/datum/outfit/syndicate_engineer/post_equip(mob/living/carbon/human/H)
	H.faction |= ROLE_SYNDICATE

/obj/effect/mob_spawn/human/syndicate_engineer/Destroy()
	new/obj/structure/fluff/empty_sleeper/syndicate(get_turf(src))
	return ..()

/obj/structure/closet/crate/solarpanel_medium
	name = "solar panel crate"
	icon_state = "engi_e_crate"

/obj/structure/closet/crate/solarpanel_medium/PopulateContents()
	..()
	for(var/i in 1 to 33)
		new /obj/item/solar_assembly(src)
	new /obj/item/electronics/tracker(src)
	new /obj/item/stack/cable_coil(src)
	new /obj/item/circuitboard/computer/solar_control(src)

// FSS3 : DND

/obj/effect/mob_spawn/human/Dndplayer
	name = "DnD player"
	roundstart = FALSE
	death = FALSE
	random = TRUE
	icon = 'icons/obj/machines/sleeper.dmi'
	icon_state = "sleeper_s"
	short_desc = "You are a very avid DnD player."
	flavour_text = "You volunteered to go around in a specialised ship, playing DnD until you die."
	important_info = "It is forbidden to attack other players."
	outfit = /datum/outfit/spacebartender

/datum/outfit/spacebartender
	name = "DnD player"
	head = /obj/item/clothing/head/chameleon
	mask = /obj/item/clothing/mask/chameleon
	uniform = /obj/item/clothing/under/chameleon
	suit = /obj/item/clothing/suit/chameleon
	shoes = /obj/item/clothing/shoes/chameleon
	gloves = /obj/item/clothing/gloves/chameleon
	ears = /obj/item/radio/headset/chameleon
	back = /obj/item/storage/backpack/chameleon
	belt = /obj/item/storage/belt/chameleon
	id = /obj/item/card/id/syndicate/anyone

/obj/effect/mob_spawn/human/DnDMaster
	name = "DnD Master"
	roundstart = FALSE
	death = FALSE
	random = TRUE
	icon = 'icons/obj/machines/sleeper.dmi'
	icon_state = "sleeper_s"
	short_desc = "You are a very avid DnD Master"
	flavour_text = "You volunteered to go around in a specialised ship, animating DnD sessions until you die."
	important_info = "It is forbidden to attack other players."
	outfit = /datum/outfit/spacebartenderDm

/datum/outfit/spacebartenderDm
	name = "DnD Master"
	head = /obj/item/clothing/head/chameleon
	mask = /obj/item/clothing/mask/chameleon
	neck = /obj/item/clothing/neck/cloak/cap
	uniform = /obj/item/clothing/under/chameleon
	suit = /obj/item/clothing/suit/chameleon
	shoes = /obj/item/clothing/shoes/chameleon
	gloves = /obj/item/clothing/gloves/chameleon
	ears = /obj/item/radio/headset/chameleon
	back = /obj/item/storage/backpack/chameleon
	belt = /obj/item/storage/belt/chameleon
	id = /obj/item/card/id/syndicate/anyone

//FSS4: Bio Sphere

/obj/item/card/id/away/biosphere
	name = "Security ID"
	desc = "Basic security ID used to access most of facilities inside the sphere."
	access = list(203)

/obj/effect/mob_spawn/human/biospheresec
	name = "\improper Bio-Sphere Security Officer"
	outfit = /datum/outfit/biospheresecurity

/datum/outfit/biospheresecurity
	name = "Bio-Sphere Security Corpse"
	uniform = /obj/item/clothing/under/rank/security/officer/formal
	suit = /obj/item/clothing/suit/security/officer
	shoes = /obj/item/clothing/shoes/combat
	gloves = /obj/item/clothing/gloves/color/black
	ears = /obj/item/radio/headset
	mask = /obj/item/clothing/mask/gas/sechailer
	back = /obj/item/storage/backpack/security
	id = /obj/item/card/id/away/biosphere

//FSS4 Areas

/area/ruin/space/has_grav/powered/biosphere
	name = "Bio Sphere"
	ambientsounds = list('sound/ambience/ambitech2.ogg', 'sound/ambience/ambitech3.ogg', 'sound/ambience/aurora_caelus_short.ogg')

/area/ruin/space/has_grav/powered/biosphere/dorm_m
	name = "Bio Sphere Male Dormitories"
	icon_state = "dorms_male"

/area/ruin/space/has_grav/powered/biosphere/dorm_f
	name = "Bio Sphere Female Dormitories"
	icon_state = "dorms_female"

//TEG ruin Areas
/area/ruin/has_grav/teg
	name = "Abandoned TEG Room"
	icon_state = "engine"

/area/ruin/has_grav/teg/storage
	name = "Abandoned TEG Facility Storage"
	icon_state = "cargo_warehouse"

/area/ruin/has_grav/teg/eva
	name = "Abadoned TEG Facility EVA"
	icon_state = "eva"

//DATU

/datum/map_template/ruin/space/tegu_asteroid
	id = "bluespaceasteroid"
	suffix = "tegu_asteroid.dmm"
	name = "Blue space asteroid"
	description = "Giant rock with candy inside!"

/datum/map_template/ruin/space/brokensolar
	id = "brokensolar"
	suffix = "Brokensolar.dmm"
	name = "Broken solars"
	description = "A broken solar array"

/datum/map_template/ruin/space/spaceshower
	id = "spaceshower"
	suffix = "SpaceShower.dmm"
	name = "Space shower"
	description = "A creepy space shower"

/datum/map_template/ruin/space/prototype
	id = "prototype"
	suffix = "prototype.dmm"
	name = "Prototype Station"
	description = "Apparently, one of the first stations built by Nanotrasen, but the Syndicate may want to reclaim it."

/datum/map_template/ruin/space/dndmansion
	id = "dndmansion"
	suffix = "DnDmansion.dmm"
	name = "dndmansion"
	placement_weight = 0
	unpickable = TRUE
	description = "A rich guy hired a bunch of nerds so he can watch you play dnd. That nerd is you. have fun."

/datum/map_template/ruin/space/smallsphere
	id = "smallsphere"
	suffix = "smallsphere.dmm"
	name = "Bio Sphere"
	description = "Nanotrasen holding facility, rumored to be the MOST humane in the entire galaxy! Is it though?"

/datum/map_template/ruin/space/oldshuttle
	id = "oldcode-nukeops"
	suffix = "oldcodeops.dmm"
	name = "Strange Infiltrator"
	description = "A nuclear operative's ship, drifing along the stars. This thing looks like it belongs in ancient times."

/datum/map_template/ruin/space/tegruin
	id = "tegruin"
	suffix = "tegruin.dmm"
	name = "Broken Engineering Satellite"
	description = "An old engineering zone with bunch of useful items in it. How did it break off like that? Good question."
