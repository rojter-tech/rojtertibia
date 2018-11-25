-- Zao Quest by Natan

function onUse(cid, item, frompos, item2, topos)

   	if item.uid == 56421 then
   		queststatus = getPlayerStorageValue(cid,28645)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR,"You have found a Item.")
   			doPlayerAddItem(cid,12645,1)
   			setPlayerStorageValue(cid,28645,1)
   		else
   			doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR,"It is empty.")
   		end
   	elseif item.uid == 56422 then
   		queststatus = getPlayerStorageValue(cid,28645)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR,"You have found a Item.")
   			doPlayerAddItem(cid,12643,1)
   			setPlayerStorageValue(cid,28645,1)
   		else
   			doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR,"It is empty.")
   		end
   	elseif item.uid == 56423 then
   		queststatus = getPlayerStorageValue(cid,28645)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR,"You have found a Item.")
   			doPlayerAddItem(cid,12642,1)
   			setPlayerStorageValue(cid,28645,1)
   		else
   			doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR,"It is empty.")
   		end
	else
		return 0
   	end

   	return 1
end
