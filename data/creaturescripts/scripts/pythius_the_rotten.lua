local config = {teleportId = 1387,
bosse = "Pythius The Rotten"}

local portal_in_pos = {x = 319, y = 841, z = 15}

function onDeath(cid, corpse, killer)
registerCreatureEvent(cid, "PythiusDead")
if config.bosse == getCreatureName(cid) then	
local position = portal_in_pos	
teleport = doCreateItem(config.teleportId,1,position)
doSetItemActionId(teleport, 9022)
end
return TRUE
end