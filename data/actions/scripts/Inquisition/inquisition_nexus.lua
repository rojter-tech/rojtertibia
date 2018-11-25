-- [( Script by: DoidinMapper )] --
function onUse(cid, item, frompos, item2, topos)
local teleport = {x=3713, y=1080, z=9}
doTeleportThing(cid, teleport, TRUE)
doPlayerSendTextMessage(cid,22,"Congratulations you completed the Inquisition Quest!")
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_MAGIC_RED)
end