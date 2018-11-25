function onUse(cid, item, fromPosition, itemEx, toPosition)
        if itemEx.itemid == 6028 then
                if getPlayerStorageValue(cid, 36205) == -1 then
                doCreatureSay(cid, 'At least I have it back, my precious amulet. I am glad you didn\'t use it! I allow you to ...ahh....enter door.... ahh', 19, {x=toPosition.x, y=toPosition.y-1, z=toPosition.z})
                doRemoveItem(cid, item.uid, 1)
                setPlayerStorageValue(cid, 36205, 1)
            end
        end
end