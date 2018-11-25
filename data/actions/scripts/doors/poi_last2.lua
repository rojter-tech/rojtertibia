function onUse(cid, item, fromPosition, itemEx, toPosition)
local charpos = getPlayerPosition(cid)
    if item.uid == 56555 and charpos.x == 32785 and (charpos.y == 32328 or charpos.y == 32327) and charpos.z == 6 then
        if getPlayerStorageValue(cid,10274) == -1 or getPlayerStorageValue(cid,10275) == -1 or getPlayerStorageValue(cid,10276) == -1 or getPlayerStorageValue(cid,10277) == -1 or getPlayerStorageValue(cid,10278) == -1 or getPlayerStorageValue(cid,10279) == -1 or getPlayerStorageValue(cid,10280) == -1 then
            doPlayerSendTextMessage(cid,25,'You did not absorb enough energy!')
        else
          local newPos = {x=32787, y=32328, z=6}
        doTeleportThing(cid, newPos)
        doSendMagicEffect(newPos, 10)
        end
		
	    elseif item.uid == 56555 and charpos.x == 32787 and (charpos.y == 32328 or charpos.y == 32329) and charpos.z == 6 then
          local newPos = {x=32785, y=32328, z=6}
		 doSendMagicEffect(getPlayerPosition(cid), 2)
        doTeleportThing(cid, newPos)

        doSendMagicEffect({x=32785,y=32328,z=6}, 10)
        end
    return 1
end