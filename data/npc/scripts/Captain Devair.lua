local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

local Topic = {}

-- OTServ event handling functions start
function onCreatureAppear(cid)				npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid) 			npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg) 	npcHandler:onCreatureSay(cid, type, msg) end
function onThink() 						npcHandler:onThink() end
-- OTServ event handling functions end

function greetCallback(cid)
	Topic[cid] = 1
	return true
end

function creatureSayCallback(cid, type, msg)
	if not npcHandler:isFocused(cid) then
		return false
	elseif msgcontains(msg, 'yalahariescondido') then
		npcHandler:say("Do you seek a passage to Yalahar for " .. (getConfigInfo("freeTravel") and "free?" or "275 gold?"), cid)
		Topic[cid] = 1
	elseif Topic[cid] == 1 and msgcontains(msg, 'yes') then
		local storage = 88775
		if doPlayerRemoveMoney(cid, 275) == true then
			if getPlayerStorageValue(cid, storage) == 1 then
				npcHandler:say('And, here we go!', cid)
				npcHandler:releaseFocus(cid)
				doSendMagicEffect(getThingPos(cid), CONST_ME_TELEPORT)
				local yalahar = {x = 32816, y = 31272, z = 6}
				doTeleportThing(cid, yalahar)
				doSendMagicEffect(yalahar, CONST_ME_TELEPORT)
				Topic[cid] = 0
			else
				npcHandler:say('You have not helped Wyrdin! Come back when you have done so.', cid)
				Topic[cid] = 0
			end
		else
			npcHandler:say('You do not have enough money.', cid)
			Topic[cid] = 0
		end
	end
	return true
end

local travelNode = keywordHandler:addKeyword({'back'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Do you seek a passage to city for 0 gold?'})
	travelNode:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = true, level = 0, cost = 0, destination = {x=1450, y=320, z=7} })
	travelNode:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = 'We would like to serve you some time.'})

keywordHandler:addKeyword({'sail'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Eu posso voltar voce para a cidade, diga back!'})
keywordHandler:addKeyword({'travel'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Eu posso voltar voce para a cidade, diga back!'})
keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'I\'m the captain of this sailing ship.'})
keywordHandler:addKeyword({'captain'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'I\'m the captain of this sailing ship.'})

npcHandler:setCallback(CALLBACK_GREET, greetCallback)
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())