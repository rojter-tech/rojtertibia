function onUse(cid, item, frompos, item2, topos)


if item.uid ==7516 then
queststatus = getPlayerStorageValue(cid,7616)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You have found Blue Legs.")
doPlayerAddItem(cid,7730,1)
setPlayerStorageValue(cid,7616,1)
else
doPlayerSendTextMessage(cid,22,"You aledry done this quest.")
end
else
return 0
end

return 1
end