function onUse(cid, item, frompos, item2, topos)

if getPlayerStorageValue(cid, 19902) < 1 then
doPlayerSendTextMessage(cid,22,"Voce acabou de conseguir um voltage armor, Parabens!!!")
local bag = doPlayerAddItem(cid, 8879, 1)
setPlayerStorageValue(cid, 19902, 1)
else
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "It is empty.")
end

return TRUE
end