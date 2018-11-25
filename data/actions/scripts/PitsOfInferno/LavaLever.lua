local tile1pos = {x=592, y=1419, z=14, stackpos=0}
local tile2pos = {x=593, y=1419, z=14, stackpos=0}
local tile3pos = {x=592, y=1418, z=14, stackpos=0}
local tile4pos = {x=593, y=1418, z=14, stackpos=0}
local lever1pos = {x=596, y=1424, z=14, stackpos=1}
local lever2pos = {x=589, y=1416, z=14, stackpos=1}

function onUse(cid, item, frompos, item2, topos)

local tile1 = getThingfromPos(tile1pos)
local tile2 = getThingfromPos(tile2pos)
local tile3 = getThingfromPos(tile3pos)
local tile4 = getThingfromPos(tile4pos)
local lever1 = getThingfromPos(lever1pos)
local lever2 = getThingfromPos(lever2pos)
if (item.itemid == 1945 and tile1.itemid == 598 and tile2.itemid == 598 and tile3.itemid == 598 and tile4.itemid == 598) then

doTransformItem(tile1.uid,407)
doTransformItem(tile2.uid,407)
doTransformItem(tile3.uid,407)
doTransformItem(tile4.uid,407)

doTransformItem(lever1.uid,1946)
doTransformItem(lever2.uid,1946)

elseif (item.itemid == 1946 and tile1.itemid == 407 and tile2.itemid == 407 and tile3.itemid == 407 and tile4.itemid == 407) then

doTransformItem(tile1.uid,598)
doTransformItem(tile2.uid,598)
doTransformItem(tile3.uid,598)
doTransformItem(tile4.uid,598)
doTransformItem(lever1.uid,1945)
doTransformItem(lever2.uid,1945)
else 
doPlayerSendCancel(cid,"Sorry, not possible.") 
end 
return 1
end