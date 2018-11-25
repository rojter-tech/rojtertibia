function onUse(cid, item, fromPosition, itemEx, toPosition)
	if itemEx.uid == 50038 then
		doTeleportThing(cid, {x = 32991, y = 31539, z = 4})
		doSendMagicEffect({x = 32991, y = 31539, z = 1},11)
	elseif itemEx.uid == 50039 then
		doTeleportThing(cid, {x = 32991, y = 31539, z = 1})
		doSendMagicEffect({x = 32991, y = 31539, z = 4},11)
		return TRUE
	end
	return FALSE
end