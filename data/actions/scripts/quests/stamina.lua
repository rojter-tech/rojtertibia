function onUse(cid, item, frompos, item2, topos)

if getPlayerStorageValue(cid, 19884) < 1 then
doPlayerSendTextMessage(cid,22,"Voce acabou de conseguir uma Ultimate Potion Stamina, Parabens!!!")
local bag = doPlayerAddItem(cid, 5468, 1)
setPlayerStorageValue(cid, 19884, 1)
else
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "It is empty.")
end

return TRUE
end