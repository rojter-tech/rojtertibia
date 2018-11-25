-- [( Script edited by DoidinMapper )] --
function onUse(cid, item, fromPosition, item2, toPosition)
item1 = 2150
item2 = 2146
item3 = 2147
item4 = 2149
item5 = 2145
porcent = 12
puff = 165
pick = math.random(1, 100)
rand = math.random(1, puff)
hit = math.random(10, 30)
pick1 = getPlayerSlotItem(cid, 5) 
pick2 = getPlayerSlotItem(cid, 6) 
if exhaust(cid, 9000, 3) == 1 then
if pick1.itemid == 2553 or pick2.itemid == 2553 then
if pick >= porcent then
if rand >= 1 and rand <= 50 then
doSendAnimatedText(toPosition,'Tck',210)
doSendMagicEffect(toPosition,3)
doPlayerAddItem(cid,item1,1)
elseif rand >= 51 and rand <= 81 then
doSendAnimatedText(toPosition,'Tuk',210)
doSendMagicEffect(toPosition,3)
doPlayerAddItem(cid,item2,1)
elseif rand >= 82 and rand <= 92 then
doSendAnimatedText(toPosition,'Tnk',210)
doSendMagicEffect(toPosition,3)
doPlayerAddItem(cid,item3,1)
elseif rand >= 93 and rand <= 100 then
doSendAnimatedText(toPosition,'Tin',210)
doSendMagicEffect(toPosition,3)
doPlayerAddItem(cid,item4,1)
elseif rand >= 101 and rand <= 103 then
doSendAnimatedText(toPosition,'Tifn',210)
doSendMagicEffect(toPosition,3)
doPlayerAddItem(cid,item5,1)
else
doSendAnimatedText(toPosition,'Tuff',210)
doSendMagicEffect(toPosition,2)
end
else
doPlayerAddHealth(cid,-hit)
doPlayerSay(cid, hit, 16)
doPlayerSendTextMessage(cid, 21,'The pick is broke and you got hit by shrapnel! Use a new pick')
doSendMagicEffect((getPlayerPosition(cid)),31)
doPlayerRemoveItem(cid,2553,1)
setPlayerStorageValue(cid,pick,-1) 
end
end
end
end