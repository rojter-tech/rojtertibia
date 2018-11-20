function onThink(interval)
	db.query("UPDATE `guild_wars` SET `status` = 4, `ended` = " .. os.time() .. " WHERE `status` = 1 AND (`started` + 3600 * 2) < " .. os.time())
	return true
end