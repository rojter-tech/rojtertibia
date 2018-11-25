function onUse(cid, item, frompos, item2, topos)


if item.uid == 10268 and item.itemid == 1945 then
doTransformItem(item.uid,item.itemid+1)
doSendMagicEffect(getPlayerPosition(cid),2)
doTeleportThing(cid,{x=368, y=1386, z=12})
doSendMagicEffect({x=368, y=1386, z=12},10)
doTransformItem(item.uid,item.itemid+1)
elseif item.uid == 10268 and item.itemid == 1946 then
doTransformItem(item.uid,item.itemid-1)
else
doPlayerSendTextMessage(cid,22,"Sorry, not possible.")
end
return 1
end  
