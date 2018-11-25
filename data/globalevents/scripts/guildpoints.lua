function onThink(interval, lastExecution)
	db.executeQuery("UPDATE `accounts` SET `guild_points_stats` = 0;")
	return true
end
