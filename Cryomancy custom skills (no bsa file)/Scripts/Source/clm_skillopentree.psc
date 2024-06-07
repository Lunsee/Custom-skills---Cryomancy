scriptName clm_skillopentree extends ObjectReference

globalvariable property CLM_GLOB_CryomancyMenuOpen auto

function OnEquipped(Actor akActor)

	if akActor == game.GetPlayer()
		if utility.IsInMenuMode()
			game.DisablePlayerControls(true, true, false, false, false, true, true, false, 0)
			utility.wait(0.0100000)
			game.EnablePlayerControls(true, true, true, true, true, true, true, true, 0)
		endIf
		CLM_GLOB_CryomancyMenuOpen.SetValueInt(1)
	endIf
endFunction
