function onUse(cid, item, fromPosition, itemEx, toPosition)

   	if item.uid == 13101 then
   		queststatus = getPlayerStorageValue(cid,53090)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found Firewalker Boots")
		doSendMagicEffect(getCreaturePosition(cid),36)
   			doPlayerAddItem(cid,9933,1)
   			setPlayerStorageValue(cid,53090,1)
   		else
   			doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
   		end
	end
   	return 1
end