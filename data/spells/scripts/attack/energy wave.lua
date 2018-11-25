local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_ENERGYAREA)
setAttackFormula(combat, COMBAT_FORMULA_LEVELMAGIC, 1, -20, 1, -55, 5, 5, 4.0, 7.0)

function onGetFormulaValues(cid, level, maglevel)
	local min = -((level/5)+(maglevel*4.0)+20)
	local max = -((level/5)+(maglevel*7.0)+55)
	return min, max
end

setCombatCallback(combat, CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

local area = createCombatArea(AREA_SQUAREWAVE5, AREADIAGONAL_SQUAREWAVE5)
setCombatArea(combat, area)

function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end
