function onUse(cid, item, frompos, item2, topos)

if getPlayerStorageValue(cid, 7197) < 1 then
doPlayerSendTextMessage(cid,22,"Voce acabou de conseguir um Crystalline Armor, Parabens!!!")
local bag = doPlayerAddItem(cid, 8878, 1)
setPlayerStorageValue(cid, 7197, 1)
else
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "It is empty.")
end

return TRUE
end