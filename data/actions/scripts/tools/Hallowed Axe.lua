--- Made by Mazen ---
function onUse(cid, item, fromPosition, itemEx, toPosition)
 
--- Config --
local levelNeeded = 120 -- How much level you need to enter the arena.
local soloEnabled = "yes" -- Enable this if you only want 1 player each time on the arena.
local summons = { -- Order the monsters, from 1 to 11. The monsters can't be less than 1 or more than 4(or how many positions you've added in summonPositions) on each stage.
	[1] = {"Demon", "Demon", "Demon", "Demon"},
	[2] = {"Demon", "Demon", "Demon", "Demon"},
	[3] = {"Demon", "Demon", "Demon", "Demon"},
	[4] = {"Demon", "Demon", "Demon", "Demon"},
	[5] = {"Demon", "Demon", "Demon", "Demon"},
	[6] = {"Demon", "Demon", "Demon", "Demon"},
	[7] = {"Demon", "Demon", "Demon", "Demon"},
	[8] = {"Demon", "Demon", "Demon", "Demon"},
	[9] = {"Demon", "Demon", "Demon", "Demon"},
	[10] = {"Demon", "Demon", "Demon", "Demon"},
	[11] = {"Demon", "Demon", "Demon", "Demon"}
}
 
local areaPostitions = {
	{x=1219, y=1138, z=7}, -- Northwest corner of the checking area.
	{x=1260, y=1171, z=7}  -- Southeast corner of the checking area.
}
 
local summonPositions = {
	{x=1219, y=1138, z=7}, 
	{x=1223, y=1142, z=7}, 
	{x=1214, y=1142, z=7}, 
	{x=1218, y=1146, z=7}
}
 
local defeatOptions = {
	position = {x=1228, y=1133, z=7}, 
	timeToTeleport = 2500
}
 
local storageOptions = {
	cutDownTree = {21545, 29061},
	stages = 21540
}
 
local demonOakParts = {
	[1] = 8288, 
	[2] = 8289, 
	[3] = 8290, 
	[4] = 8291
}
----------------------------------------------------------------
	local xPass = 0
	if soloEnabled == "yes" then
		for xPos = areaPostitions[1].x, areaPostitions[2].x do
			for yPos = areaPostitions[1].y, areaPostitions[2].y do
				if isPlayer(getThingfromPos({x = xPos, y = yPos, z = areaPostitions[1].z, stackpos = 255})) == TRUE then
					xPass = 1
					break
				end
			end
		end
	end
 
	if itemEx.itemid == 2709 and itemEx.uid == 32193 and getPlayerLevel(cid) >= levelNeeded then
		if getPlayerStorageValue(cid, storageOptions.cutDownTree[1]) == -1 and getPlayerStorageValue(cid,storageOptions.cutDownTree[2]) == 1 and xPass == 0 then
			doTransformItem(itemEx.uid, 3669)
			doTeleportThing(cid, toPosition, TRUE)
			setPlayerStorageValue(cid, storageOptions.stages, 1)
			setPlayerStorageValue(cid, storageOptions.cutDownTree[1], 1)
			for i = 1, #demonOakParts do
				setPlayerStorageValue(cid, demonOakParts[i], 0)
			end
		else
			doSendMagicEffect(toPosition, 2)
		end
	elseif isInArray(demonOakParts, itemEx.itemid) == true then
		local stage = getPlayerStorageValue(cid, storageOptions.stages)
		local part = getPlayerStorageValue(cid, itemEx.itemid)
		if summons[stage] ~= nil then
			if part < math.floor((#summons+1)/4) then
				if math.random(1, 2) == 1 then
					for i = 1, #summons[stage] do
						doCreateMonster(summons[stage][i], summonPositions[i])
					end
					setPlayerStorageValue(cid, storageOptions.stages, stage + 1)
					setPlayerStorageValue(cid, itemEx.itemid, part + 1)
					doTargetCombatHealth(0, cid, COMBAT_EARTHDAMAGE, -270, -310, CONST_ME_BIGPLANTS)
				else
					doTargetCombatHealth(0, cid, COMBAT_EARTHDAMAGE, -270, -310, CONST_ME_BIGPLANTS)
				end
				doSendMagicEffect(toPosition, 0)
			else
				doSendMagicEffect(toPosition, 2)
			end
		else
			addEvent(onDefeat, defeatOptions.timeToTeleport, cid, defeatOptions, storageOptions)
		end
	else
		return FALSE
	end
return TRUE
end
 
function onDefeat(cid, defeatOptions, storageOptions)
	doSendMagicEffect(getCreaturePosition(cid), 2)
	doTeleportThing(cid, defeatOptions.position)
	doSendMagicEffect(getCreaturePosition(cid), 10)
	setPlayerStorageValue(cid, storageOptions.cutDownTree[1], 2)
end