function onUse(cid, item, fromPosition, itemEx, toPosition)

local teleporta = {x=33533,y=31509,z=4}
local teleportb = {x=500,y=500,z=1}
local teleportc = {x=33652,y=31490,z=10}
local teleportd = {x=33535,y=31517,z=4}

if(item.actionid == 4830) then
doTeleportThing(cid, teleporta)
doSendMagicEffect(getPlayerPosition(cid), 10)
elseif (item.actionid == 4831) then
doTeleportThing(cid, teleportb)
doSendMagicEffect(getPlayerPosition(cid), 10)
elseif (item.actionid == 4832) then
doTeleportThing(cid, teleportc)
doSendMagicEffect(getPlayerPosition(cid), 10)
elseif (item.actionid == 4833) then
doTeleportThing(cid, teleportd)
doSendMagicEffect(getPlayerPosition(cid), 10)
end
return TRUE
end