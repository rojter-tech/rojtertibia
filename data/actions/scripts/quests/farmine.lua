function onUse(cid, item, fromPosition, itemEx, toPosition)
	if itemEx.uid == 50036 then
		doTeleportThing(cid, {x = 32993, y = 31547, z = 4})
		doSendMagicEffect({x = 32993, y = 31547, z = 4},11)
	elseif itemEx.uid == 50037 then
		doTeleportThing(cid, {x = 33061, y = 31527, z = 10})
		doSendMagicEffect({x = 33061, y = 31527, z = 10},11)
		return TRUE
	end
	return FALSE
end