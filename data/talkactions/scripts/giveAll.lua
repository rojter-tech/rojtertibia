local id = 12544
local count = 1

function onSay(cid, words, param)
	if not Player(cid):getAccountType() == ACCOUNT_TYPE_GOD then
		return true	
	end
	local players = Game.getPlayers()
	
	if #players < 1 then return false end
	for i = 1, #players do
		Player(players[i]):addItem(id, count)
		Player(players[i]):sendTextMessage(MESSAGE_INFO_DESCR, 'You have been giving '..count..' '..ItemType(id):getName()..' from '..Player(cid):getName()..'.')
	end

end	