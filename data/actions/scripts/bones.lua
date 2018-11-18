
function onUse(cid, item, fromPosition, itemEx, toPosition)
		local ppos = getPlayerPosition(cid)
		local player = Player(cid)
		
		local rand = math.random(1, 9)	
		
		if player:getStorageValue(98775) <= os.time() then
        if rand == 1 then          
            doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE,"You ransack the pile but fail to find any useful parts.")
            doSummonCreature("Guzzlemaw", ppos)
           	
			elseif  rand == 2 then
			doSummonCreature("Guzzlemaw", ppos)
			doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE,"You ransack the pile but fail to find any useful parts.")
			
			elseif  rand == 3 then
			doPlayerAddItem(cid,22389,1) 
			doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE,"Amidst the pile of various bones you find a large, hollow part, similar to a pipe.")
			elseif  rand == 4 then
			doSummonCreature("Guzzlemaw", ppos)
			doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE,"You ransack the pile but fail to find any useful parts.")
			elseif  rand == 5 then
			doSummonCreature("Guzzlemaw", ppos)
			doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE,"You ransack the pile but fail to find any useful parts.")
			
			elseif  rand == 6 then
			doSummonCreature("Guzzlemaw", ppos)
			doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE,"You ransack the pile but fail to find any useful parts.")
			elseif  rand == 7 then
			doSummonCreature("Guzzlemaw", ppos)
			doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE,"You ransack the pile but fail to find any useful parts.")
			elseif  rand == 8 then
			doPlayerAddItem(cid,22389,1) 
			doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE,"Amidst the pile of various bones you find a large, hollow part, similar to a pipe.")
			elseif  rand == 9 then
			doSummonCreature("Guzzlemaw", ppos)
			doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE,"You ransack the pile but fail to find any useful parts.")
			end
			
	 player:setStorageValue(98775, os.time() + 1 * 1 * 60 )
	 else 
	 doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE,"You need to wait 60 seconds to use again.")
	end 
		
	return true
end
