local PRESENT_BLUE = {8304, 2195, 2472, 2470}
local PRESENT_RED = {8304, 2195, 2472, 2470}

function onUse(cid, item, fromPosition, itemEx, toPosition)
local count = 1
if(item.itemid == 6570) then
local randomChance = math.random(1, #PRESENT_BLUE)
if(randomChance == 1) then
count = 10
elseif(randomChance == 2) then
count = 3
end
doPlayerAddItem(cid, PRESENT_BLUE[randomChance], count)
elseif(item.itemid == 6571) then
local randomChance = math.random(1, #PRESENT_RED)
if randomChance > 0 and randomChance < 4 then
count = 10
end
doPlayerAddItem(cid, PRESENT_RED[randomChance], count)
end

doSendMagicEffect(fromPosition, CONST_ME_GIFT_WRAPS)
doRemoveItem(item.uid, 1)
return true
end