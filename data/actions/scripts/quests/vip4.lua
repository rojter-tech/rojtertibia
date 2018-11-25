function onUse(cid, item, frompos, item2, topos)

if getPlayerStorageValue(cid, 19900) < 1 then
doPlayerSendTextMessage(cid,22,"Voce acabou de conseguir 1kk, Parabens!!!")
local bag = doPlayerAddItem(cid, 2160, 100)
setPlayerStorageValue(cid, 19900, 1)
else
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "It is empty.")
end

return TRUE
end