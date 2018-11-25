function onUse(cid, item, frompos, item2, topos)

if getPlayerStorageValue(cid, 19886) < 1 then
doPlayerSendTextMessage(cid,22,"Voce acabou de conseguir um spellbook of dark mysteries, Parabens!!!")
local bag = doPlayerAddItem(cid, 8918, 1)
setPlayerStorageValue(cid, 19886, 1)
else
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "It is empty.")
end

return TRUE
end