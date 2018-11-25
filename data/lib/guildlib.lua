--[[ Queries:
		CREATE TABLE `guild_storages` (
		`guild_id` int NOT NULL default 0,
		`key` int NOT NULL default 0,
		`value` varchar(255) NOT NULL default 0
		);
		
		CREATE TRIGGER guilds_update
			AFTER UPDATE OF rank_id ON players
		BEGIN
			UPDATE players
			   SET guild_id = IFNULL( ( 
					   SELECT guild_id
						 FROM guild_ranks
						WHERE id = rank_id 
				   ) 
				   , 0 );
		END;
		
		ALTER TABLE guilds ADD points INT DEFAULT 0 NOT NULL
		ALTER TABLE guilds ADD balance BIGINT default 0 NOT NULL
		ALTER TABLE players ADD guild_id INT DEFAULT 0 NOT NULL
		UPDATE players SET guild_id = IFNULL((SELECT guild_id FROM guild_ranks WHERE id = rank_id), 0)
]]

-- Advanced Guild System maintenance functions

function installAdvancedGuildSystem()
	local func = db.query or db.executeQuery
	local query = db.getResult("SELECT balance FROM guilds")
	if query:getID() == -1 then
		func("ALTER TABLE guilds ADD balance BIGINT default 0 NOT NULL")
	end
	query:free()
	if func("ALTER TABLE guilds ADD points INT DEFAULT 0 NOT NULL") then
		if func("ALTER TABLE players ADD guild_id INT DEFAULT 0 NOT NULL") then
			if func("UPDATE players SET guild_id = IFNULL((SELECT guild_id FROM guild_ranks WHERE id = rank_id),0)") then
				if func("CREATE TABLE `guild_storages` (`guild_id` INT NOT NULL DEFAULT 0, `key` INT NOT NULL DEFAULT 0, `value` VARCHAR(255) NOT NULL DEFAULT 0);") then
					if func("CREATE TRIGGER [rank_id update] AFTER UPDATE OF rank_id ON players BEGIN UPDATE players SET guild_id = IFNULL((SELECT guild_id FROM guild_ranks WHERE id = rank_id), 0); END;") then
						setGlobalStorageValue(50050, 1)
						print("Advanced Guild System installation successful.")
						return true
					end
				end
			end
		end
	end
	print("Advanced Guild System could NOT be installed.")
	return false
end

function updateGuildColumn()
	print("Updating guild column in players table...")
	local func = db.query or db.executeQuery
	local str = "failure."
	if func("UPDATE players SET guild_id = IFNULL((SELECT guild_id FROM guild_ranks WHERE id = rank_id),0)") then
		str = "success!"
	end
	print("Update was a "..str)
end

isAGSInstalled = getGlobalStorageValue(50050) == 1

-- Guild Points functions

function getGuildPoints(guild_id)
	local ret = db.getResult("SELECT points FROM guilds WHERE id = " .. guild_id)
	if ret:getID() == -1 then
		return -1
	end
	return ret:getDataInt("points")
end

function doGuildAddPoints(guild_id, value)
	local func = db.executeQuery or db.query
	return func("UPDATE guilds SET points = ("..value.." + (SELECT points FROM guilds WHERE id = "..guild_id..")) WHERE id = "..guild_id)
end

-- General guild functions

function hasGuild(cid)
	return getPlayerGuildId(cid) > 0
end

function isInGuild(cid, guildId)
	return getPlayerGuildId(cid) == guildId
end

function getGuildName(guild_id)
	local query = db.getResult("SELECT name FROM guilds WHERE id = "..guild_id)
	local ret = query:getID() == -1 and false or query:getDataString("name")
	query:free()
	return ret
end

function getGuildMembersGUID(guild_id)
	if db.getResult("SELECT ownerid FROM guilds WHERE id = "..guild_id):getID() > -1 then
		local members = {}
		local query = db.getResult("SELECT id FROM players WHERE guild_id = "..guild_id)
		if query:getID() == -1 then
			return false
		end
		repeat
			local member = query:getDataInt("id")
			table.insert(members, member)
		until not query:next()
		query:free()
		return members
	end
	return false
end

function getPlayerGuildIdByGUID(guid)
	local query = db.getResult("SELECT guild_id FROM players WHERE id = "..guid)
	return query:getDataInt("guild_id")
end

function getOnlineGuildMembersByRank(guildId, rank, selectLowerRanks)
	if not rank then
		rank = 3
		selectLowerRanks = true
	end
	local list = {}
	for _, pid in pairs(getPlayersOnline()) do
		if getPlayerGuildId(pid) == guildId then
			local playerRank = getPlayerGuildLevel(pid)
			if playerRank == rank or (selectLowerRanks and playerRank <= rank) then
				table.insert(list, pid)
			end
		end
	end
	return list
end

function doFunctionOnGuildMembers(guildId, func)
	local players = getPlayersOnline()
	local count = 0
	for _, pid in pairs(players) do
		if getPlayerGuildId(pid) == guildId then
			func(pid)
			count = count + 1
		end
	end
	return count
end

-- Guild Storage functions

function setGuildStorageValue(guild_id, key, value)
	local func = db.executeQuery or db.query
	local query = db.getResult("SELECT value FROM guild_storages WHERE key = "..key.." AND guild_id = "..guild_id)
	if query:getID() == -1 then
		return func("INSERT INTO guild_storages (guild_id, key, value) VALUES ("..guild_id..", "..key..", "..value..")")
	end
	return func("UPDATE guild_storages SET value = "..value.." WHERE key = "..key.." AND guild_id = "..guild_id)
end

function getGuildStorageValue(guild_id, key)
	local ret = db.getResult("SELECT value FROM guild_storages WHERE guild_id = "..guild_id.." AND key = "..key)
	if ret:getID() == -1 then
		return -1
	end
	return ret:getDataInt("value") or ret:getDataString("value")
end

-- Guild Balance functions

function getGuildBalance(guild_id)
	local balance = db.getResult("SELECT balance FROM guilds WHERE id = "..guild_id)
	local ret = balance:getID() >= 0 and balance:getDataInt("balance") or false
	balance:free()
	return ret
end

function setGuildBalance(guild_id, value)
	local func = db.executeQuery or db.query
	func("UPDATE guilds SET balance = "..value.." WHERE id = "..guild_id)
	return true
end

function doGuildAddBalance(guild_id, value)
	local func = db.executeQuery or db.query
	func("UPDATE guilds SET balance = (SELECT balance FROM guilds WHERE id = "..guild_id..") + "..value.." WHERE id = "..guild_id)
	return true
end