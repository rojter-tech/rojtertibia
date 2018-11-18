--[[function onAdvance(cid, skill, oldlevel, newlevel)

	       	if getPlayerLevel(cid) >= 8 and getPlayerStorageValue(cid, 99963) ~= 1 then
						    doPlayerSetBalance(cid, getPlayerBalance(cid) + 2000)
						    setPlayerStorageValue(cid, 99963, 1)
						    doPlayerSendTextMessage(cid, 19, "You have received 2000 gold in your bank for advancing to Level 8.")

		    elseif getPlayerLevel(cid) >= 40 and getPlayerStorageValue(cid, 99964) ~= 1 then
						    doPlayerSetBalance(cid, getPlayerBalance(cid) + 10000)
						    setPlayerStorageValue(cid, 99964, 1)
						    doPlayerSendTextMessage(cid, 19, "You have received 10000 gold in your bank for advancing to Level 40.")

		   elseif getPlayerLevel(cid) >= 50 and getPlayerStorageValue(cid, 99965) ~= 1 then
						    doPlayerSetBalance(cid, getPlayerBalance(cid) + 10000)
						    setPlayerStorageValue(cid, 99965, 1)
						    doPlayerSendTextMessage(cid, 19, "You have received 10000 gold in your bank for advancing to Level 50.")

		     elseif getPlayerLevel(cid) >= 75 and getPlayerStorageValue(cid, 99966) ~= 1 then
						    doPlayerAddItem(cid, 10515)
						    setPlayerStorageValue(cid, 99966, 1)
						    doPlayerSendTextMessage(cid, 19, "You have received one Whacking Driller of Fate because you reached Level 75.")
				
							
			elseif getPlayerLevel(cid) >= 100 and getPlayerStorageValue(cid, 99969) ~= 1 then
						    doPlayerSetBalance(cid, getPlayerBalance(cid) + 40000)
						   -- setPlayerStorageValue(cid, 99969, 1)
						   doPlayeraddMount(65)
						   doPlayerSendTextMessage(cid, 19, "You have received 40000 gold in your bank for advancing to Level 100.")
							
							
			
            elseif getPlayerLevel(cid) >= 150 and getPlayerStorageValue(cid, 99970) ~= 1 then
						    doPlayerAddItem(cid, 5942)
						    setPlayerStorageValue(cid, 99970, 1)
						    doPlayerSendTextMessage(cid, 19, "You have received one blessed wooden stake because you reached level 150.")

					

 elseif getPlayerLevel(cid) >= 200 and getPlayerStorageValue(cid, 99971) ~= 1 then
						    doPlayerAddItem(cid, 2195)
						    setPlayerStorageValue(cid, 99971, 1)
						    doPlayerSendTextMessage(cid, 19, "You have been awarded with 1 boots of haste for reaching level 200.")

												
						    end
		    return TRUE
end--]]


local tabela = 
{
	-- [level] = type = "item", id = ITEM_ID, id2 = QUANTIDADE, msg = "MENSAGEM"},
	-- [level] = type = "addon", id = ID_ADDON_FEMALE, id2 = ID_ADDON_MALE, msg = "MENSAGEM"},
	-- [level] = type = "mount", id = ID_MOUNT, id2 = 0, msg = "MENSAGEM"},

	[20] = {type = "item", id = 2160, id2 = 2, msg = "Voce ganhou 2 Crystal Coins por alcancar o level 20!"},	
	[30] = {type = "item", id = 5908, id2 = 1, msg = "Voce ganhou 1 Obsidian Knife por alcancar o level 30!"},	
	[40] = {type = "addon", id = 136, id2 = 128, msg = "Voce ganhou o addon Citizen Full por alcancar o level 40!"},
	[50] = {type = "item", id = 5942, id2 = 1, msg = "Voce ganhou 1 Blessed Wooden Stake por alcancar o level 50!"},
	[60] = {type = "mount", id = 11, id2 = 0, msg = "Voce ganhou a montaria Stampor por alcancar o level 60!"},
	[70] = {type = "item", id = 2160, id2 = 5, msg = "Voce ganhou 5 Crystal Coins por alcancar o level 70!"},
	[100] = {type = "mount", id = 13, id2 = 0, msg = "Voce ganhou a montaria Donkey por alcancar o level 100!"},
	[150] = {type = "item", id = 2160, id2 = 5, msg = "Voce ganhou 5 crystal coins por alcancar o level 150!"},
	[200] = {type = "addon", id = 140, id2 = 132, msg = "Voce ganhou o addon Nobleman/Noblewoman full por alcancar o level 200!"},
	[250] = {type = "item", id = 2195, id2 = 1, msg = "Voce ganhou Boots of Haste por alcancar o level 250!"},
	[300] = {type = "item", id = 2160, id2 = 30, msg = "Voce ganhou 30 crystal coins por alcancar o level 300!"},
	[350] = {type = "mount", id = 35, id2 = 0, msg = "Voce ganhou a montaria Water Buffalo por alcancar o level 350!"},
	[400] = {type = "mount", id = 71, id2 = 0, msg = "Voce ganhou a montaria Glooth Glider por alcancar o level 400!"},
}

local storage = 99971

function onAdvance(player, skill, oldLevel, newLevel)

	if (skill == 8) then
		for level, _ in pairs(tabela) do
			if player:getLevel() >= level and player:getStorageValue(storage) < level then
				if tabela[level].type == "item" then	
					player:addItem(tabela[level].id, tabela[level].id2)
				elseif tabela[level].type == "addon" then
					player:addOutfitAddon(tabela[level].id, 3)
					player:addOutfitAddon(tabela[level].id2, 3)
				elseif tabela[level].type == "mount" then
					player:addMount(tabela[level].id)
				else
					return false
				end

				player:sendTextMessage(MESSAGE_EVENT_ADVANCE, tabela[level].msg)
				player:setStorageValue(storage, level)
			end
		end
	end

	player:save() -- salvando player   

	return true
end