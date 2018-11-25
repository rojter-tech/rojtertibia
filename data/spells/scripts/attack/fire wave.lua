local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_FIREDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_HITBYFIRE)
setAttackFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -1, -7, -1, -8, 5, 5, 1.19, 2.19)

function onGetFormulaValues(cid, level, maglevel)
	local min = -((level/5)+(maglevel*1.19)+7)
	local max = -((level/5)+(maglevel*2.19)+8)
	return min, max
end

setCombatCallback(combat, CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

local area = createCombatArea(AREA_WAVE4, AREADIAGONAL_WAVE4)
setCombatArea(combat, area)

function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end
