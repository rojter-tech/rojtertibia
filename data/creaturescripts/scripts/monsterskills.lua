function onKill(cid, target)
	if(isMonster(target) == TRUE) then
		local name = getCreatureName(target)
		
		local monsterkills = db.getResult("SELECT mid, kills FROM monsterskills WHERE name = '" .. name .. "' LIMIT 1")

		if(monsterkills:getID() ~= -1) then
			db.executeQuery("UPDATE monsterskills SET kills = " .. (monsterkills:getDataInt("kills") + 1) .. " WHERE mid = " .. monsterkills:getDataInt("mid") .. " LIMIT 1")
		else
			db.executeQuery("INSERT INTO monsterskills (name, kills) VALUES ('" .. name .. "', 1)")
		end
	end
	return TRUE
end