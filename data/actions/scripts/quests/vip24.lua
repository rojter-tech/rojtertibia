function onUse(cid, item, frompos, item2, topos)

if getPlayerStorageValue(cid, 2488) < 1 then
doPlayerSendTextMessage(cid,22,"Voce acabou de conseguir um ornamented shield, Parabens!!!")
local bag = doPlayerAddItem(cid, 2524, 1)
setPlayerStorageValue(cid, 2488, 1)
else
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "It is empty.")
end

return TRUE
end