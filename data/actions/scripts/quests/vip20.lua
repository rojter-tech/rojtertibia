function onUse(cid, item, frompos, item2, topos)

if getPlayerStorageValue(cid, 2498) < 1 then
doPlayerSendTextMessage(cid,22,"Voce acabou de conseguir um glacier kilt, Parabens!!!")
local bag = doPlayerAddItem(cid, 7896, 1)
setPlayerStorageValue(cid, 2498, 1)
else
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "It is empty.")
end

return TRUE
end