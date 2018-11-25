function onUse(cid, item, frompos, item2, topos)

if item.uid == 39472 then
queststatus = getPlayerStorageValue(cid,39472)
if queststatus == -1 then
rand = math.random(1000,1200)
doPlayerSendTextMessage(cid,22,"Você ganhou 50k de xp e mais uma bp com itens.")
doSendAnimatedText(getPlayerPosition(cid),"EXP!", TEXTCOLOR_RED)
doPlayerAddExp(cid,50000)
container = doPlayerAddItem(cid, 2000, 1)
doAddContainerItem(container, 7440, 1)
doAddContainerItem(container, 7439, 1)
doAddContainerItem(container, 9971, 2)
doAddContainerItem(container, 2114, 1)
doAddContainerItem(container, 11128, 1)
doSendMagicEffect(topos, 5)
setPlayerStorageValue(cid,39472,1)
else
doPlayerSendTextMessage(cid,22,"Você Ja Fez A Quest.")
end
else
return 0
end

return 1
end
