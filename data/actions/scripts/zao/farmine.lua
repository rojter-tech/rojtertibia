function onUse(cid, item, fromPosition, itemEx, toPosition)
	if itemEx.uid == 53241 then
		doTeleportThing(cid, {x = 818, y = 917, z = 1})
		doSendMagicEffect({x = 818, y = 917, z = 1},11)
elseif itemEx.uid == 53243 then
		doTeleportThing(cid, {x = 820, y = 926, z = 4})
		doSendMagicEffect({x = 820, y = 926, z = 4},11)

		return TRUE
	end
	return FALSE
end