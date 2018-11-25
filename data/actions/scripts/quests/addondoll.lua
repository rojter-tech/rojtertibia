function onUse(cid, item, frompos, item2, topos)

if getPlayerStorageValue(cid, 19883) < 1 then
doPlayerSendTextMessage(cid,22,"Voce acabou de conseguir um Addon Doll, Parabens!!!")
local bag = doPlayerAddItem(cid, 9693, 1)
setPlayerStorageValue(cid, 19883, 1)
else
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "It is empty.")
end

return TRUE
end