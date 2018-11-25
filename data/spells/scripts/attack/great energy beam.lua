local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_ENERGYAREA)
setAttackFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -1, -22, -1, -37, 5, 5, 3.6, 5.99)

function onGetFormulaValues(cid, level, maglevel)
	local min = -((level/5)+(maglevel*3.6)+22)
	local max = -((level/5)+(maglevel*5.99)+37)
	return min, max
end

setCombatCallback(combat, CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

local area = createCombatArea(AREA_BEAM7, AREADIAGONAL_BEAM7)
setCombatArea(combat, area)

function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end
