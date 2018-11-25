local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_RED)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, false)

local condition = createConditionObject(CONDITION_INVISIBLE)
setConditionParam(condition, CONDITION_PARAM_TICKS, 200000)
setCombatCondition(combat, condition)

function onCastSpell(cid, var)
   if (getPlayerStorageValue(cid, 16700) ~= -1) then
      return doPlayerSendCancel(cid, "Você não pode usar invisible durante o CTF!") and doSendMagicEffect(getThingPos(cid), 2)
   end

   return doCombat(cid, combat, var)
end