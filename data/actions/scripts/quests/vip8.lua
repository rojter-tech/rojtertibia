function onUse(cid, item, frompos, item2, topos)

if getPlayerStorageValue(cid, 19904) < 1 then
doPlayerSendTextMessage(cid,22,"Voce acabou de conseguir um obsidian truncheon, Parabens!!!")
local bag = doPlayerAddItem(cid, 8928, 1)
setPlayerStorageValue(cid, 19904, 1)
else
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "It is empty.")
end

return TRUE
end