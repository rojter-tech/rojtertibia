local from = {x=33052, y=30989, z=3}
local to = {x=33067, y=31004, z=3}

local monsters = {
{{x=33064, y=30996, z=3}, "Baron Brute"},
{{x=33064, y=30997, z=3}, "The Axeorcist"}
}

local players = {
{{x=33076, y=30977, z=2}, {x=33051, y=30997, z=3}},
{{x=33077, y=30977, z=2}, {x=33051, y=30998, z=3}}
}

local level = 120

function onUse(cid, item, fromPosition, itemEx, toPosition)
local t = {}
if item.itemid == 1945 then
for i = 1, #players do
t[i] = getTopCreature(players[i][1]).uid
if not isPlayer(t[i]) then
return doCreatureSay(cid, 'You need ' .. #players .. ' players to do this quest.', TALKTYPE_ORANGE_1, false, cid)
elseif getPlayerLevel(cid) < level then
return doCreatureSay(cid, 'All players have to be level ' .. level .. ' to do this quest.', TALKTYPE_ORANGE_1, false, cid)
end
end
for i = 1, #t do
doTeleportThing(t[i], players[i][2])
doSendMagicEffect(players[i][1], CONST_ME_TELEPORT)
doSendMagicEffect(players[i][2], CONST_ME_TELEPORT)
end
for i = 1, #monsters do
doCreateMonster(monsters[i][2], monsters[i][1])
doSendMagicEffect(monsters[i][1], CONST_ME_TELEPORT)
end
else
for x = from.x, to.x do
for y = from.y, to.y do
local v = getTopCreature({x=x, y=y, z=from.z}).uid
if isPlayer(v) then
return doCreatureSay(cid, 'There is already a team in the battle room.', TALKTYPE_ORANGE_1, false, cid)
elseif isMonster(v) then
table.insert(t, v)
end
end
end
for i = 1, #t do
doRemoveCreature(t[i])
end
end

return doTransformItem(item.uid, item.itemid == 1945 and 1946 or 1945)
end