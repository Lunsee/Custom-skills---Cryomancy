scriptName clm_respec extends activemagiceffect

formlist property PerksCryomancy auto
message property clm_respec_EndMessage auto
message property clm_respec_StartMessage auto

Perk currentPerk
Int perkCount
Int perkIndex

Function OnEffectStart(Actor akTarget, Actor akCaster)

	if akTarget == game.GetPlayer() 
		perkCount = 0
		clm_respec_StartMessage.show(0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		self.RefundPerks(PerksCryomancy, akTarget)
		clm_respec_EndMessage.show(0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	EndIf
EndFunction

Function RefundPerks(formlist akSkillList, Actor akTarget)

	perkIndex = 0
	while perkIndex < akSkillList.GetSize()
		currentPerk = akSkillList.GetAt(perkIndex) as Perk
		if akTarget.HasPerk(currentPerk)
				akTarget.RemovePerk(currentPerk)
				perkCount += 1
				perkIndex += 1
			else
				perkIndex += 1
			endIf
	endWhile
	game.AddPerkPoints(perkCount)
EndFunction


