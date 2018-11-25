function onStepIn(cid, item, position, fromPosition)

--Config-->
local starting = {x = 316, y = 831, z = 15, stackpos = 253}
local ending = {x = 337, y = 849, z = 15, stackpos = 253}
local checking = {x = starting.x, y = starting.y, z = starting.z, stackpos = starting.stackpos}
local portal_in_pos = {x = 319, y = 841, z = 15, stackpos = 1}
local portal_iten_pos = getThingfromPos(portal_in_pos)
local teleportId = 1387
local player_pos_entrada = {x = 333, y = 841, z = 15}
local player_pos_saida = {x = 340, y = 840, z = 15}
local boss_pos = {x = 328, y = 841, z = 15}
local boss = "Pythius The Rotten"
local queststatus = getPlayerStorageValue(cid, 53090) --ValueID DA QUEST QUANDO VOCE JA PEGO O ITEM 
--EndConfig-->

--Do not touch this--
if getPlayerLookDir(cid) == 0 then
newdir = 2
elseif getPlayerLookDir(cid) == 1 then
newdir = 3
elseif getPlayerLookDir(cid) == 2 then
newdir = 0
else
newdir = 1
end
--Don't edit this unless you know what you are doing.

if item.actionid == 9022 then
doTeleportThing(cid, player_pos_saida)
doSendMagicEffect(player_pos_saida, 10)
doRemoveItem(portal_iten_pos.uid, 1)
return TRUE
end

if item.actionid == 9021 and queststatus == -1 then
players = 0
totalmonsters = 0
monster = {}
repeat
creature = getThingfromPos(checking)
if creature.itemid > 0 then

if getPlayerAccess(creature.uid) == 0 then
players = players + 1
end

if getPlayerAccess(creature.uid) ~= 0 and getPlayerAccess(creature.uid) ~= 3 then
totalmonsters = totalmonsters + 1
monster[totalmonsters] = creature.uid
end
end
checking.x = checking.x + 1

if checking.x > ending.x then
checking.x = starting.x
checking.y = checking.y + 1
end

until checking.y > ending.y

if players == 0 then

if totalmonsters ~= 0 then
current = 0
repeat
current = current + 1
doRemoveCreature(monster[current])
until current >= totalmonsters	
end 

doTeleportThing(cid, player_pos_entrada)
doSendMagicEffect(player_pos_entrada, 10)
doCreateMonster(boss, boss_pos)

if portal_iten_pos.itemid == teleportId then
doRemoveItem(portal_iten_pos.uid, 1)
end 

else
doMoveCreature(cid, newdir)
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_ORANGE, 'is in the room now. Wait a moment!')
end
else
doMoveCreature(cid, newdir)
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_ORANGE, 'Sorry you already did this quest!')
end
end