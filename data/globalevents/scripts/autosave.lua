local cleanMapAtSave = true

local function serverSave()
	if cleanMapAtSave then
		--cleanMap()
	Game.broadcastMessage('Server Saved, next save in 2 hours.', MESSAGE_STATUS_WARNING)
	end

	saveServer()
end

function onThink(interval)
	Game.broadcastMessage('Server Save within 30 seconds, may cause a little freeze, do not worry.', MESSAGE_STATUS_WARNING)
	addEvent(serverSave, 60000)
	return true
end