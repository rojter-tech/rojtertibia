function onUse(cid, item, frompos, item2, topos)

   	if item.uid == 7193 then
   		queststatus = getPlayerStorageValue(cid,5588)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a Frozen Plate.")
   			doPlayerAddItem(cid,8887,1)
   			setPlayerStorageValue(cid,5588,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 7194 then
   		queststatus = getPlayerStorageValue(cid,5588)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a Oceanborn Leviathan Armor.")
   			doPlayerAddItem(cid,8884,1)
   			setPlayerStorageValue(cid,5588,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 7195 then
   		queststatus = getPlayerStorageValue(cid,5588)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a Voltage Armor.")
   			doPlayerAddItem(cid,8879,1)
   			setPlayerStorageValue(cid,5588,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 7198 then
   		queststatus = getPlayerStorageValue(cid,5588)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a Divine Plate.")
   			doPlayerAddItem(cid,8885,1)
   			setPlayerStorageValue(cid,5588,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 7199 then
   		queststatus = getPlayerStorageValue(cid,5588)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a Lavos Armor.")
   			doPlayerAddItem(cid,8877,1)
   			setPlayerStorageValue(cid,5588,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 7222 then
   		queststatus = getPlayerStorageValue(cid,5588)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a Molten Plate.")
   			doPlayerAddItem(cid,8886,1)
   			setPlayerStorageValue(cid,5588,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 7197 then
   		queststatus = getPlayerStorageValue(cid,5588)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a Crystalline Armor.")
   			doPlayerAddItem(cid,8878,1)
   			setPlayerStorageValue(cid,5588,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
	else
		return 0
   	end

   	return 1
end
