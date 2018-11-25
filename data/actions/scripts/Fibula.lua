function onUse(cid, item, fromPosition, itemEx, toPosition)
	if itemEx.uid == 53244 then
		doTeleportThing(cid, {x = 32071, y = 32181, z = 6})
		doSendMagicEffect({x = 32071, y = 32181, z = 6},11)
elseif itemEx.uid == 53245 then
		doTeleportThing(cid, {x = 328, y = 1424, z = 13})
		doSendMagicEffect({x = 328, y = 1424, z = 13},11)

		return TRUE
	end
	return FALSE
end