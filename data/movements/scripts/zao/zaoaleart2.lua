function onStepIn(cid, item, position, fromPosition)

local teleport = {x=33084, y=31219, z=8} -- Posição do teleport.
local effect = 11 -- Efeito do teleport.

if isPremium(cid) == TRUE then
doTeleportThing(cid, teleport)
doSendMagicEffect(getPlayerPosition(cid), effect)
else
doPlayerSendText(cid, MESSAGE_INFO_DESCR, "Sorry, you need a premium.")
end
return TRUE
end