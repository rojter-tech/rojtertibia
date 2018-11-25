  function onUse(cid, item, fromPosition, itemEx, toPosition)
local position = {x=32786, y=32412, z=8} -- reward room
        if getPlayerStorageValue(cid, 35700) > 1 then
                doTeleportThing(cid, position)
                doSendMagicEffect(position, CONST_ME_TELEPORT)
        else
                return FALSE
        end
        return TRUE
end 