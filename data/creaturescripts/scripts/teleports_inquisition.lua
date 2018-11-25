local config = {
	message = "You have 45 seconds for back use Death Monster For Teleport You.",
	timeToRemove = 60, -- seconds
	teleportId = 1387,
	bosses = {
		["Ushuriel"] = { x = 172, y = 559, z = 13 },
		["Annihilon"] = { x = 294, y = 681, z = 13},
		["Hellgorak"] = { x = 255, y = 467, z = 13},
		["Madareth"] = { x = 287, y = 365, z = 13},
		["Zugurosh"] = { x = 314,  y = 474, z = 13},
		["Latrivan"] = { x = 408, y = 413, z = 13},
                ["Tirecz"] = { x = 33049, y = 30985, z = 7 }
              
                
	}
}
	
local function removal(position)
	doRemoveThing(getTileItemById(position, config.teleportId).uid, 1)
    return TRUE
end


function onDeath(cid, corpse, killer)
	registerCreatureEvent(cid, "inquisitionPortals")
	local position = getCreaturePosition(cid)
	
	for name, pos in pairs(config.bosses) do
		if name == getCreatureName(cid) then
			teleport = doCreateTeleport(config.teleportId, pos, position)
			doCreatureSay(cid, config.message, TALKTYPE_ORANGE_1)
			addEvent(removal, config.timeToRemove * 1000, position)
			doSendMagicEffect(position,65)
		end
	end
	return TRUE
end
