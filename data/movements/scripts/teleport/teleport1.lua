function onStepIn(cid, item, position, fromPosition)
local teleport = {x=31883, y=31756, z=7}
doTeleportThing(cid, teleport)
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_MAGIC_RED)
end