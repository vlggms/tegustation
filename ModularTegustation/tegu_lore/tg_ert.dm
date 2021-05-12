//Terragov regular erts

/datum/antagonist/ert/terragov
	name = "TerraGov Intervention Squad"
	outfit = /datum/outfit/terragov/sodlier
	role = "Soldier"

//message on spawn
/datum/antagonist/ert/terragov/greet()
	if(!ert_team)
		return

	to_chat(owner, "<B><font size=3 color=red>You are the [name].</font></B>")
	to_chat(owner, "<B><font size=5 color=red>You are NOT a Nanotrasen Employee. You are a soldier of TerraGov.</font></B>")
	var/missiondesc = "Your squad is being sent on a mission to [station_name()] TerraGov high command."
	if(leader) //If Squad Leader
		missiondesc += " Lead your squad to ensure the completion of the mission. Board the shuttle when your team is ready."
	else
		missiondesc += " Follow orders given to you by your squad leader."
	if(!rip_and_tear)
		missiondesc += "Avoid human casualties whenever possible, non-human casualties are fine."

	missiondesc += "<BR><B>Your Mission</B> : [ert_team.mission.explanation_text]"
	to_chat(owner,missiondesc)

/datum/antagonist/ert/terragov/elite
	name = "TerraGov Elite Military Force"
	outfit = /datum/outfit/terragov/sodlier/elite
	role = "Trooper"
	rip_and_tear = TRUE

//TERRAGOV OFFICAL

/datum/antagonist/ert/terragov/official
	name = "Terragov Official"
	show_name_in_check_antagonists = TRUE
	var/datum/objective/mission
	role = "Inspector"
	random_names = FALSE
	outfit = /datum/outfit/terragov/official

//message on spawn

/datum/antagonist/ert/terragov/official/greet()
	to_chat(owner, "<B><font size=3 color=red>You are a TerraGov Official.</font></B>")
	to_chat(owner, "<B><font size=5 color=red>You are NOT a Nanotrasen Employee.</font></B>")

	if (ert_team)
		to_chat(owner, "TerraGov is sending you to [station_name()] with the task: [ert_team.mission.explanation_text]")
	else
		to_chat(owner, "TerraGov is sending you to [station_name()] with the task: [mission.explanation_text]")


/datum/antagonist/ert/terragov/official/forge_objectives()
	if (ert_team)
		return ..()
	if(mission)
		return
	var/datum/objective/missionobj = new ()
	missionobj.owner = owner
	missionobj.explanation_text = "Cover up a information leak on [station_name()]."
	missionobj.completed = TRUE
	mission = missionobj
	objectives |= mission

//ert datums


/datum/ert/terragov/official
	code = "102"
	teamsize = 1
	opendoors = FALSE
	leader_role = /datum/antagonist/ert/terragov/official
	roles = list(/datum/antagonist/ert/terragov/official)
	rename_team = "TerraGov Officials"
	polldesc = "a TerraGov Official"
	mission = "Cover up a information leak or inspect the station."
	random_names = FALSE
	leader_experience = FALSE

/datum/ert/terragov
	leader_role = /datum/antagonist/ert/terragov
	roles = list(/datum/antagonist/ert/terragov)
	code = "101"
	rename_team = "TerraGov Intervention Squad"
	polldesc = "a TerraGov Intervention Squad"


/datum/ert/terragov/elite
	roles = list(/datum/antagonist/ert/terragov/elite)
	leader_role = /datum/antagonist/ert/terragov/elite
	rename_team = "TerraGov Animal Control Division"
	code = "TGMC"
	mission = "Humanity's biggest threat has come back to haunt SS13, and it's your job to push them back to the brink of extinction."
	polldesc = "TerraGov Animal control"
