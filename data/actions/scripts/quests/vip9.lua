function onUse(cid, item, frompos, item2, topos)

if getPlayerStorageValue(cid, 7126) < 1 then
doPlayerSendTextMessage(cid,22,"Voce acabou de conseguir um glacier mask, Parabens!!!")
local bag = doPlayerAddItem(cid, 7902, 1)
setPlayerStorageValue(cid, 7126, 1)
else
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "It is empty.")
end

return TRUE
end