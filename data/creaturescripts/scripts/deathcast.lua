function onDeath(cid, corpse, deathList)
if isPlayer(deathList[1]) then
return true,doBroadcastMessage("[Cast Info] Informs:\n".. getCreatureName(cid) .. "[" .. getPlayerLevel(cid) .. "] was Killed by player " .. getCreatureName(deathList[1]) .. "[" .. getPlayerLevel(deathList[1]) .. "]",18)
end
return doBroadcastMessage("[Cast Info] Informs:\nThe player ".. getCreatureName(cid) .. "[" .. getPlayerLevel(cid) .. "] was Killed by monster " .. getCreatureName(deathList[1]) .. ".",20)
end   