-- Montaria system by Chain and Modified for Saymon14 ;D
local function montar(parametros)
cid = params[1]
if getPlayerStorageValue(cid, 5555) == 1 then
setPlayerStorageValue(cid,montado,-1)
doPlayerSendTextMessage(cid,22,"You got off the ride!")
if voc == 1 or voc == 5 then
elseif voc == 2 or voc == 6 then
elseif voc == 3 or voc == 7 then
elseif voc == 4 or voc == 8 then
end
end
end
function onUse(cid, item, frompos, item2, itemEx, topos)
--Configs--
local mount_creature = 6009 -- id do corpo da criatura
local vipstorage = 1111 -- id do storagevalue do vip
local voc = getPlayerVocation(cid)
local sex = getPlayerSex(cid)
params = { [1]=cid, [2]=lvl, [3]=voc, [4]=ml }
roupamontado1 = {lookType = 4}
roupamontado2 = {lookType = 4}
roupamontado3 = {lookType = 4}
roupamontado4 = {lookType = 4}
local speed = 40 getCreatureSpeed(cid)
montado = getPlayerStorageValue(cid,5555)
vip = getPlayerStorageValue(cid,vipstorage)
--end of configs--

--ACTION TIME!--
if item.itemid == mount_creature then
addEvent(montar, 30000, params)
--Sorc
if voc == 1 or voc == 5 then
doSendAnimatedText(getPlayerPosition(cid), "Uhuuuu!...", TEXTCOLOR_ORANGE)
setPlayerStorageValue(cid,montado,1)
doChangeSpeed(cid, speed)
doRemoveItem(item.uid, 1) 
doSendMagicEffect(roupamontado1, 14)
doSetCreatureOutfit(cid,roupamontado1, 30000)
--Druid
elseif voc == 2 or voc == 6 then
doSendAnimatedText(getPlayerPosition(cid), "Uhuuuu!...", TEXTCOLOR_ORANGE)
setPlayerStorageValue(cid,montado,1)
doChangeSpeed(cid, speed)
doRemoveItem(item.uid, 1) 
doSendMagicEffect(roupamontado1, 14)
doSetCreatureOutfit(cid,roupamontado2, 30000)
--Pally
elseif voc == 3 or voc == 7 then
doSendAnimatedText(getPlayerPosition(cid), "Uhuuuu!...", TEXTCOLOR_ORANGE)
setPlayerStorageValue(cid,montado,1)
doChangeSpeed(cid, speed)
doRemoveItem(item.uid, 1) 
doSendMagicEffect(roupamontado1, 14)
doSetCreatureOutfit(cid,roupamontado3, 30000)
--Kina
elseif voc == 4 or voc == 8 then
doSendAnimatedText(getPlayerPosition(cid), "Uhuuuu!...", TEXTCOLOR_ORANGE)
setPlayerStorageValue(cid,montado,1)
doChangeSpeed(cid, speed)
doRemoveItem(item.uid, 1)
doSendMagicEffect(roupamontado1, 14)
doSetCreatureOutfit(cid,roupamontado4, 30000)
--No Voc
elseif voc == 0 then
doPlayerSay(cid,"I don't have vocation!", 17)
---
else
return 0
end
end
return TRUE
end