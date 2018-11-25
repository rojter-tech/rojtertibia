function onUse(cid, item, frompos, item2, topos)


if item.uid ==7517 then
queststatus = getPlayerStorageValue(cid,7617)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You have found 50 Platinum Coints.")
doPlayerAddItem(cid,2152,50)
setPlayerStorageValue(cid,7617,1)
else
doPlayerSendTextMessage(cid,22,"You aledry done this quest.")
end
else
return 0
end

return 1
end