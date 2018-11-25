function onUse(cid, item, frompos, item2, topos)

if getPlayerStorageValue(cid, 7125) < 1 then
doPlayerSendTextMessage(cid,22,"Voce acabou de conseguir um dragon robe, Parabens!!!")
local bag = doPlayerAddItem(cid, 8867, 1)
setPlayerStorageValue(cid, 7125, 1)
else
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "It is empty.")
end

return TRUE
end