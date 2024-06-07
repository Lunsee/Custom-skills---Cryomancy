Scriptname clm_sync extends Quest

GlobalVariable Property CLM_CryomancyLevel Auto
Actor Property PlayerRef Auto

Event OnStoryIncreaseSkill(string asSkill)
	
	if asSkill == "Destruction"
		syncSkill()
	EndIf
	self.Stop()
EndEvent

Function syncSkill()
    int playerDestructionLevel = PlayerRef.GetActorValue("Destruction") as int
    CLM_CryomancyLevel.SetValueInt(playerDestructionLevel)
EndFunction
