function onUse(cid, item, frompos, item2, topos)

if getPlayerStorageValue(cid, 19888) < 1 then
doPlayerSendTextMessage(cid,22,"Voce acabou de conseguir um havoc blade, Parabens!!!")
local bag = doPlayerAddItem(cid, 7405, 1)
setPlayerStorageValue(cid, 19888, 1)
else
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "It is empty.")
end

return TRUE
end