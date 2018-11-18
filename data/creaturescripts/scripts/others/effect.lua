local ITEM_ID = 24324
function onThink(cid, interval, lastExecution)
if exhaustion.check(cid, 23056) then return true end
if (getPlayerSlotItem(cid, CONST_SLOT_RING).itemid == ITEM_ID) then
doSendMagicEffect(getCreaturePosition(cid), CONST_ME_TELEPORT)
exhaustion.set(cid, 23056, 2)
end
return true
end