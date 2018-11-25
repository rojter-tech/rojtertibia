function onUse(cid, item, fromPosition, itemEx, toPosition)
local key = doCreateItemEx(2088, 1)
    if item.uid == 64118 then
        if getPlayerStorageValue(cid,64118) == -1 then
            doPlayerSendTextMessage(cid,25,"You have found a key.")
	     doSetItemActionId(key, 3610)
	     doPlayerAddItemEx(cid, key, 1)
            setPlayerStorageValue(cid,64118, 1)
        else
            doPlayerSendTextMessage(cid,25,"The hole is empty.")
        end
    end
    return TRUE
end