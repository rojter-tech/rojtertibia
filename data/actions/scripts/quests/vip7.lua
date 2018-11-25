function onUse(cid, item, frompos, item2, topos)

if getPlayerStorageValue(cid, 19903) < 1 then
doPlayerSendTextMessage(cid,22,"Voce acabou de conseguir um thunder hammer, Parabens!!!")
local bag = doPlayerAddItem(cid, 2421, 1)
setPlayerStorageValue(cid, 19903, 1)
else
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "It is empty.")
end

return TRUE
end