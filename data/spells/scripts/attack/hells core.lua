local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_FIREDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_FIREAREA)
setAttackFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -1, -50, -1, -75, 5, 5, 7.99, 12.99)

function onGetFormulaValues(cid, level, maglevel)
	local min = -((level/5)+(maglevel*7.99)+40)
	local max = -((level/5)+(maglevel*12.99)+70)
	return min, max
end

setCombatCallback(combat, CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

local area = createCombatArea(AREA_CROSS5X5)
setCombatArea(combat, area)

function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end
