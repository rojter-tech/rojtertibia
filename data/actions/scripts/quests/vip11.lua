function onUse(cid, item, frompos, item2, topos)

if getPlayerStorageValue(cid, 7191) < 1 then
doPlayerSendTextMessage(cid,22,"Voce acabou de conseguir um Double EXP 60 Minutes, Parabens!!!")
local bag = doPlayerAddItem(cid, 8304, 1)
setPlayerStorageValue(cid, 7191, 1)
else
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "It is empty.")
end

return TRUE
end