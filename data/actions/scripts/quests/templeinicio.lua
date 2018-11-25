function onUse(cid, item, frompos, item2, topos)

if getPlayerStorageValue(cid, 19881) < 1 then
doPlayerSendTextMessage(cid,22,"Voce acabou de conseguir os seus primeiros items!")
local bag = doPlayerAddItem(cid, 2000, 1)
doAddContainerItem(bag, 2160, 2)
doAddContainerItem(bag, 2389, 1)
doAddContainerItem(bag, 2173, 1)
doAddContainerItem(bag, 2120, 1)
doAddContainerItem(bag, 2554, 1)
doAddContainerItem(bag, 7618, 5)
doAddContainerItem(bag, 7620, 5)
doAddContainerItem(bag, 2190, 1)
doAddContainerItem(bag, 2182, 1)
doAddContainerItem(bag, 2525, 1)
doAddContainerItem(bag, 2383, 1)
doAddContainerItem(bag, 2430, 1)
doAddContainerItem(bag, 2643, 1)
doAddContainerItem(bag, 2457, 1)
doAddContainerItem(bag, 2647, 1)
doAddContainerItem(bag, 2463, 1)
doAddContainerItem(bag, 2789, 100)
setPlayerStorageValue(cid, 19881, 1)
else
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "It is empty.")
end

return TRUE
end