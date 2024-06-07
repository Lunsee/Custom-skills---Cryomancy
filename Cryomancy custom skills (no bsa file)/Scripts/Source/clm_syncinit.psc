Scriptname clm_syncInit extends Quest hidden

GlobalVariable Property CLM_CryomancyLevel Auto
Actor Property PlayerRef Auto

Event OnInit()
	self.syncSkill()
EndEvent

Function syncSkill()
	int playerDestructionLevel = PlayerRef.GetActorValue("Destruction") as int
	CLM_CryomancyLevel.SetValueInt(playerDestructionLevel)
EndFunction