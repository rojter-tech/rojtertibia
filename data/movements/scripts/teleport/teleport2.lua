function onStepIn(cid, item, position, fromPosition)
local teleport = {x=31879, y=31784, z=7}
doTeleportThing(cid, teleport, TRUE)
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_MAGIC_RED)
end