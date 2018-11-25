function onStepIn(cid, item, pos)
	local position = {x=412, y=1414, z=9}
	local position2 = {x=398, y=1380, z=9}
	
		if (getPlayerItemCount(cid, 1970) < 1) then
			doTeleportThing(cid, position)
			doSendMagicEffect(position,10)
		else

			doTeleportThing(cid, position2)
						doSendMagicEffect(position2,10)
		end
end