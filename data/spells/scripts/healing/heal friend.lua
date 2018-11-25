local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TARGETCASTERORTOPMOST, true)
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_HEALING)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_GREEN)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, 0)


function getCombatFormulas(cid, lv, maglv)
	local formula_min = ((lv*0.25 + maglv*3) * 3.3)
	local formula_max = ((lv*0.25 + maglv*3) * 3.9)

	if(formula_max < formula_min) then
		local tmp = formula_max
		formula_max = formula_min
		formula_min = tmp
	end
	return formula_min, formula_max
end
setCombatCallback(combat, CALLBACK_PARAM_LEVELMAGICVALUE, "getCombatFormulas")


function onCastSpell(cid, var)
doSendMagicEffect(getCreaturePosition(cid), CONST_ME_MAGIC_BLUE)
	return doCombat(cid, combat, var)
end
