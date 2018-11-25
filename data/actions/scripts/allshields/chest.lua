function onUse(cid, item, frompos, item2, topos)

   	if item.uid == 2491 then
   		queststatus = getPlayerStorageValue(cid,5590)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a sparking rainbow shield.")
   			doPlayerAddItem(cid,8908,1)
   			setPlayerStorageValue(cid,5590,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 2487 then
   		queststatus = getPlayerStorageValue(cid,5590)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a nightmare shield.")
   			doPlayerAddItem(cid,8884,1)
   			setPlayerStorageValue(cid,5590,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 2488 then
   		queststatus = getPlayerStorageValue(cid,5590)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a ornamented shield.")
   			doPlayerAddItem(cid,8878,1)
   			setPlayerStorageValue(cid,5590,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
	else
		return 0
   	end

   	return 1
end
