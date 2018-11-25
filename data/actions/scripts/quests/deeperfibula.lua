function onUse(cid, item, frompos, item2, topos)

	if item.uid == 30070 then
		if getPlayerStorageValue(cid,30070) == -1 then
			doPlayerSendTextMessage(cid,25,"You have found a knight axe.")
			doPlayerAddItem(cid,2430,1)
			setPlayerStorageValue(cid,30070,1)
		else
			doPlayerSendTextMessage(cid,25,"The fire is empty.")
		end

	elseif item.uid == 30071 then
		if getPlayerStorageValue(cid,30071) == -1 then
			doPlayerSendTextMessage(cid,25,"You have found a dwarven ring.")
			doPlayerAddItem(cid,2213,1)
			setPlayerStorageValue(cid,30071,1)
		else
			doPlayerSendTextMessage(cid,25,"The pile of bones is empty.")
		end

	elseif item.uid == 30072 then
		if getPlayerStorageValue(cid,30072) == -1 then
			doPlayerSendTextMessage(cid,25,"You have found a tower shield.")
			doPlayerAddItem(cid,2528,1)
			setPlayerStorageValue(cid,30072,1)
		else
			doPlayerSendTextMessage(cid,25,"The pile of bones is empty.")
		end

	elseif item.uid == 30073 then
		if getPlayerStorageValue(cid,30073) == -1 then
			doPlayerSendTextMessage(cid,25,"You have found a elven amulet.")
			doPlayerAddItem(cid,2198,1)
			setPlayerStorageValue(cid,30073,1)
		else
			doPlayerSendTextMessage(cid,25,"The dead dragon is empty.")
		end
		elseif item.uid == 30074 then
		if getPlayerStorageValue(cid,30074) == -1 then
			doPlayerSendTextMessage(cid,25,"You have found a warrior helmet.")
			doPlayerAddItem(cid,2475,1)
			setPlayerStorageValue(cid,30074,1)
		else
			doPlayerSendTextMessage(cid,25,"The dead dragon is empty.")
		end
	end
    return true
end