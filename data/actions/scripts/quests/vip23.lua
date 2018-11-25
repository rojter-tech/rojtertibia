function onUse(cid, item, frompos, item2, topos)

if getPlayerStorageValue(cid, 2487) < 1 then
doPlayerSendTextMessage(cid,22,"Voce acabou de conseguir um nightmare shield, Parabens!!!")
local bag = doPlayerAddItem(cid, 6391, 1)
setPlayerStorageValue(cid, 2487, 1)
else
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "It is empty.")
end

return TRUE
end