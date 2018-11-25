function onStepIn(cid, item, position, fromPosition)

local teleport = {x=33276, y=31133, z=7} -- Posição do teleport.
local effect = 11 -- Efeito do teleport.

if isPremium(cid) == TRUE then
doTeleportThing(cid, teleport)
doSendMagicEffect(getPlayerPosition(cid), effect)
else
doPlayerSendText(cid, MESSAGE_INFO_DESCR, "Sorry, you need a premium.")
end
return TRUE
end