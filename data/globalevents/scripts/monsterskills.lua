local config = {
	interval = 24 * 60 * 1,
	storage = 24387
}

function onThink(interval, lastExecution)
	local storage = getGlobalStorageValue(config.storage)
	local time = os.time()
	
	if ((storage + config.interval) < time or storage == -1) then
		db.executeQuery("DELETE FROM monsterskills")
		setGlobalStorageValue(config.storage, time)
		broadcastMessage("Monsters kills was reset.")
	end		
	return TRUE
end