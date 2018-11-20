local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
 
function onCreatureAppear(cid) npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid) npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg) npcHandler:onCreatureSay(cid, type, msg) end
function onThink() npcHandler:onThink() end

local function warEND(warID)
	print(warID)
	print('War Data Cleared')
	local players = Game.getPlayers()
	for i=1,#players do
		if players[i]:getStorageValue(warPrivate_storage) == 1 then
			players[i]:setStorageValue(warPrivate_storage, 0)
			if (Game.getStorageValue(WAR_SYSTEM[warID].Team1Storage) == players[i]:getGuild():getId()) then
				players[i]:teleportTo(players[i]:getTown():getTemplePosition())
			elseif (Game.getStorageValue(WAR_SYSTEM[warID].Team2Storage) == players[i]:getGuild():getId()) then
				players[i]:teleportTo(players[i]:getTown():getTemplePosition())
			end
		end
	end
	Game.setStorageValue(WAR_SYSTEM[warID].warTimeStorage, 0)
	Game.setStorageValue(WAR_SYSTEM[warID].Team2Storage, 0)
	Game.setStorageValue(WAR_SYSTEM[warID].Team1Storage, 0)
end

local function greetCallback(cid)

        local player = Player(cid)
        local guild = player:getGuild()
		if guild == nil then
			npcHandler:say("You must be in a guild to speak with me.", cid)
		return false
	end
	return true
end

local function creatureSayCallback(cid, type, msg)
       
        local player = Player(cid)
        local guild = player:getGuild()
       
        if not npcHandler:isFocused(cid) then
                return false  
        -------------------------------------------------------------------------------
        -------------------------        ADD WAR       --------------------------------
        -------------------------------------------------------------------------------
	   
        elseif msgcontains(msg, "declare") or msgcontains(msg, "war") then
		-- Check if they are not already in war
				emptyWAR = true
				for i = 1, #WAR_SYSTEM do
					if guild:getId() == Game.getStorageValue(WAR_SYSTEM[i].Team1Storage) or guild:getId() == Game.getStorageValue(WAR_SYSTEM[i].Team2Storage) then
						emptyWAR = false
						break
					else
						emptyWAR = true
					end
				end
				if emptyWAR then
					npcHandler:say("Which city would you like to war in {edron}, {venore}, {carlin}, {thais}, {libertybay} or the {darama}?", cid)
					npcHandler.topic[cid] = 4
				else
					npcHandler:say("Sorry your team is already involved in a war, would you like to {join} it?", cid)
					npcHandler.topic[cid] = 0
				end
		elseif npcHandler.topic[cid] == 4 then
		-- Checking if the town is not already occupied
				local towns = {
					['venore'] = 1,
					['edron'] = 2,
					['darama'] = 3,
					['thais'] = 4,
					['carlin'] = 5,
					['libertybay'] = 6
					}
				local thing = towns[msg]
				place = msg
				local timeCheck = Game.getStorageValue(WAR_SYSTEM[thing].warTimeStorage)
				if timeCheck == nil then
					timeCheck = 0
				end
				if timeCheck > os.time() then
					npcHandler:say("I'm sorry this town is already occupied please select another town.", cid)
					npcHandler.topic[cid] = 4 
				else
					warTown = thing
					npcHandler:say("Would you like to fight for {15}, {30}, or {60} minutes?", cid)
					npcHandler.topic[cid] = 5  			
				end
		-- Checking how long the duration should be
		elseif npcHandler.topic[cid] == 5 then
				duration = 0
				if isInArray({'15', '30', '60'}, msg) then
					duration = msg
					npcHandler:say("Which guild would you like to invite to war?", cid)
					npcHandler.topic[cid] = 2  			
				end
		elseif npcHandler.topic[cid] == 3 then
                npcHandler:say("Which guild would you like to invite to war?", cid)
                npcHandler.topic[cid] = 2       
        elseif npcHandler.topic[cid] == 2 then
                local enemyName, enemyId = msg, getGuildId(msg)
                local guildName, guildId = guild:getName(), guild:getId()
                if enemyId == false then
                        npcHandler:say("A guild with this name does not exist.", cid)
                        return true   
				end
				emptyEnemyWAR = false
				for i = 1, #WAR_SYSTEM do
					if (enemyId == Game.getStorageValue(WAR_SYSTEM[i].Team1Storage)) or (enemyId == Game.getStorageValue(WAR_SYSTEM[i].Team2Storage)) then
						emptyEnemyWAR = true
					else
						emptyEnemyWAR = false
					end
				end
                if enemyId == false then
                        npcHandler:say("A guild with this name does not exist.", cid)
                        return true                       
                elseif guildId == enemyId then
                        npcHandler:say("You may not war your own guild.", cid)
                        return true               
                elseif player:getGuildLevel() < 3 then
                        npcHandler:say("You are not a guild leader.", cid)
                        return true       
                elseif emptyEnemyWAR then
                        npcHandler:say("This guild is already in a war.", cid)
                        return true  						
				else
                                Game.setStorageValue(WAR_SYSTEM[warTown].Team1Storage, guildId)
                                Game.setStorageValue(WAR_SYSTEM[warTown].Team2Storage, enemyId)
                                broadcastMessage("The guild ".. guildName .." has invited the guild ".. enemyName .." to WAR ANTI-INTRUSE for a duration of ".. duration .." minutes.\nLocation: "..place.."\n\nTo enter the war city please visit the War Master NPC or type: !war.", MESSAGE_STATUS_BROADCAST)                                         		
                        npcHandler:say("You have invited ".. enemyName .." to a private war with a duration of ".. duration .." minutes.", cid)
                        Game.setStorageValue(WAR_SYSTEM[warTown].warTimeStorage, os.time() + (duration * 60 * 1000))
                        addEvent(broadcastMessage, duration * 60 * 1000, "The Private Guild War has ended between ".. guildName .." and ".. enemyName ..".", MESSAGE_STATUS_BROADCAST)
						addEvent(warEND, duration * 60 * 1000, warTown)
						npcHandler.topic[cid] = 0
                end
       
        -------------------------------------------------------------------------------
        -------------------------      ENTER WAR       --------------------------------
        -------------------------------------------------------------------------------
       
        elseif msgcontains(msg, 'join') then
		local guildName, guildId = guild:getName(), guild:getId()
		-- Check if they are not already in war
				emptyWAR = false
				for i = 1, #WAR_SYSTEM do
					if guild:getId() == Game.getStorageValue(WAR_SYSTEM[i].Team1Storage) or guild:getId() == Game.getStorageValue(WAR_SYSTEM[i].Team2Storage) then
						emptyWAR = true
						break
					else
						emptyWAR = false
					end
				end
				if emptyWAR then
					for i = 1, #WAR_SYSTEM do
						if guildId == Game.getStorageValue(WAR_SYSTEM[i].Team1Storage) then
								player:teleportTo(WAR_SYSTEM[i].Team1Pos)
								player:setStorageValue(warPrivate_storage, 1)
								npcHandler:say("Fight bravely!", cid)
						elseif guildId == Game.getStorageValue(WAR_SYSTEM[i].Team2Storage) then
								player:teleportTo(WAR_SYSTEM[i].Team2Pos)
								player:setStorageValue(warPrivate_storage, 1)
								npcHandler:say("Fight bravely!", cid)
						end
					end
				else
				npcHandler:say("Your guild has not been invited to any wars.", cid)
                npcHandler.topic[cid] = 0
				end
	end
       
        return true
end

npcHandler:setMessage(MESSAGE_GREET, "Would you like to {declare} or {join} a war?")
npcHandler:setMessage(MESSAGE_FAREWELL, "Goodbye. Human. Being!")
npcHandler:setMessage(MESSAGE_WALKAWAY, "Goodbye. Human. Being!")


npcHandler:setCallback(CALLBACK_GREET, greetCallback)
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())