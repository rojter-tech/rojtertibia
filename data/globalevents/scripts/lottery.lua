local config = {
    interval = "1 hour",
    website = false
}

function onThink(interval)
    local players = {}
    for _, player in ipairs(Game.getPlayers()) do
        if not player:getGroup():getAccess() then
            table.insert(players, player)
        end
    end

    local c = #players
    if c <= 0 then
        return true
    end

    local winner  = players[math.random(#players)]

	local function doPlayerAddPremiumPoints(cid, count)
		db.query('UPDATE accounts SET premium_points = premium_points+'.. count ..' WHERE id = '..winner:getAccountId()..'')
	end
	
    doPlayerAddPremiumPoints(cid, 7)	
    broadcastMessage("[Lottery System] " .. winner:getName() .. " won 7 premium points! Congratulations! (Next lottery in " .. config.interval .. ")")

    if config.website then
        db.query("INSERT INTO `lottery` (`name`, `item`) VALUES (\"".. db.escapeString(winner:getName()) .."\", \"".. db.escapeString(it:getName()) .."\");")
    end
    return true
end