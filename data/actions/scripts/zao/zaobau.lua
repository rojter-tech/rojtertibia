 function onUse(cid, item, frompos, item2, topos)

local config = {
        storage = 56250, -- change to your own storage value :)
        item = 12656
		

}

        if getPlayerStorageValue(cid, config.storage) == -1 then
                setPlayerStorageValue(cid, config.storage, 1)
				doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR,"You have found a item.")
                key = doPlayerAddItem(cid, config.item, 1) ~= -1
        else
                doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR,"The pile of bones is empty.")
                end
        return TRUE
end 