function onUse(cid, item, fromPosition, itemEx, toPosition)
local key = doCreateItemEx(2091, 1)
    if item.uid == 30074 then
        if getPlayerStorageValue(cid,9763) == -1 then
            doPlayerSendTextMessage(cid,25,"You have found a key.")
			doItemSetAttribute(aid, 60074)
			doPlayerAddItemEx(cid, key, 1)
            setPlayerStorageValue(cid,9763, 1)
        else
            doPlayerSendTextMessage(cid,25,"The skeletons is empty.")
        end
    end
    return TRUE
end