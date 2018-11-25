-- [( Script created by DoidinMapper )] --
function onUse(cid, item, fromPosition, itemEx, toPosition)
local teleporta = {x=33559,y=31503,z=4}
local teleportb = {x=33561, y=31503, z=6}
if(item.actionid == 4330) then
doTeleportThing(cid, teleporta, TRUE)
doSendMagicEffect(getPlayerPosition(cid), 10)
elseif (item.actionid == 4331) then
doTeleportThing(cid, teleportb, TRUE)
doSendMagicEffect(getPlayerPosition(cid), 10)
end
return TRUE
end