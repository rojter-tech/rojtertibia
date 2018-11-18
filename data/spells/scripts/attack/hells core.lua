local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_FIREDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_FIREAREA)
combat:setArea(createCombatArea(AREA_CROSS5X5))

function onGetFormulaValues(player, level, maglevel)
	local min = (level / 5) + (maglevel * 9) + 50
	local max = (level / 5) + (maglevel * 13) + 75
	return -min, -max
end

combat:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

function onCastSpell(creature, variant)
if creature:isPlayer() then
		local city = CityWars.getPlayerWar(creature)
		if city and not city:onCastSpell(creature, 'ultimateExplosion') then
			return false
		end
	end
	return combat:execute(creature, variant)
end
