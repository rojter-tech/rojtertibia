function onUse(cid, item, frompos, item2, topos)

   	if item.actionid == 4071 then
   		queststatus = getPlayerStorageValue(cid,4070)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You found the way of life, now you have to kill Morgaroth.")
   			setPlayerStorageValue(cid,4070,1)
   		else
   			doPlayerSendTextMessage(cid,22,"You found the way of life, now you have to kill Morgaroth.")
   		end

end

end