--[[
	Capture The Flag System
	Author: Maxwell Denisson(MaXwEllDeN)
	Version: 2.0 [REMAKE] 22/04/2013
	Contact: maxwellmda@gmail.com
]]

function onStepIn(cid, item, position, lastPosition, fromPosition, toPosition, actor)
	if not isPlayer(cid) then
		return false
	end

	CTF_LIB.addPlayer(cid)
	return true
end
