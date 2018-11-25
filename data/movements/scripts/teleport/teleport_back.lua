function onStepIn(cid, item, position, fromPosition)
local teleport = getPlayerTown(cid)
doTeleportThing(cid, getTownTemplePosition(teleport))
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_MAGIC_RED)
end