function onUse(cid, item, frompos, item2, topos)

   	if item.uid == 8001 then
   		queststatus = getPlayerStorageValue(cid,8001)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a Boots of Haste.")
   			doPlayerAddItem(cid,2195,1)
   			setPlayerStorageValue(cid,8001,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 8002 then
   		queststatus = getPlayerStorageValue(cid,8002)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a Giant Sword.")
   			doPlayerAddItem(cid,2393,1)
   			setPlayerStorageValue(cid,8002,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 8003 then
   		queststatus = getPlayerStorageValue(cid,8003)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a Tower Shield.")
   			doPlayerAddItem(cid,2528,1)
   			setPlayerStorageValue(cid,8003,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 8004 then
   		queststatus = getPlayerStorageValue(cid,8004)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a Stealth Ring.")
   			doPlayerAddItem(cid,2165,1)
   			setPlayerStorageValue(cid,8004,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 8005 then
   		queststatus = getPlayerStorageValue(cid,8005)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a Stone Skin Amulet.")
   			doPlayerAddItem(cid,2197,1)
   			setPlayerStorageValue(cid,8005,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 8006 then
   		queststatus = getPlayerStorageValue(cid,8006)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a Crystal Coin.")
   			doPlayerAddItem(cid,2160,1)
   			setPlayerStorageValue(cid,8006,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
	else
		return 0
   	end

   	return 1
end
