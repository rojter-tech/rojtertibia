--[[-- ### CONFIG ###
-- message send to player by script "type" (types you can check in "global.lua")
SHOP_MSG_TYPE = 18
-- time (in seconds) between connections to SQL database by shop script
SQL_interval = 30
-- ### END OF CONFIG ###
function onThink(interval, lastExecution)
    local result_plr = db.storeQuery("SELECT * FROM z_ots_comunication")
    if(result_plr ~= false) then
        repeat
            local id = tonumber(result.getDataInt(result_plr, "id"))
            local action = tostring(result.getDataString(result_plr, "action"))
            local delete = tonumber(result.getDataInt(result_plr, "delete_it"))
            local cid = getPlayerByName(tostring(result.getDataString(result_plr, "name")))
            if(cid) then
                local itemtogive_id = tonumber(result.getDataInt(result_plr, "param1"))
                local itemtogive_count = tonumber(result.getDataInt(result_plr, "param2"))
                local container_id = tonumber(result.getDataInt(result_plr, "param3"))
                local container_count = tonumber(result.getDataInt(result_plr, "param4"))
                local add_item_type = tostring(result.getDataString(result_plr, "param5"))
                local add_item_name = tostring(result.getDataString(result_plr, "param6"))
                local storage = tostring(result.getDataString(result_plr, "param7"))
                local received_item = 0
                local full_weight = 0
                if(add_item_type == 'container') then
                    container_weight = getItemWeight(container_id, 1)
                    if(isItemRune(itemtogive_id)) then
                        items_weight = container_count * getItemWeight(itemtogive_id, 1)
                    else
                        items_weight = container_count * getItemWeight(itemtogive_id, itemtogive_count)
                    end
                    full_weight = items_weight + container_weight
                else
                    full_weight = getItemWeight(itemtogive_id, itemtogive_count)
                    if(isItemRune(itemtogive_id)) then
                        full_weight = getItemWeight(itemtogive_id, 1)
                    else
                        full_weight = getItemWeight(itemtogive_id, itemtogive_count)
                    end
                end
                local free_cap = getPlayerFreeCap(cid)
                if(full_weight <= free_cap) then
                    if(add_item_type == 'container') then
                        local new_container = doCreateItemEx(container_id, 1)
                        local iter = 0
                        while(iter ~= container_count) do
                            doAddContainerItem(new_container, itemtogive_id, itemtogive_count)
                            iter = iter + 1
                        end
                        received_item = doPlayerAddItemEx(cid, new_container)
                    else
                        local new_item = doCreateItemEx(itemtogive_id, itemtogive_count)
                        received_item = doPlayerAddItemEx(cid, new_item)
                    end
                    if(type(received_item) == "number" and received_item == RETURNVALUE_NOERROR) then
                        doPlayerSendTextMessage(cid, SHOP_MSG_TYPE, 'You received '.. add_item_name ..' from Aurera-War Shop.')
						setPlayerStorageValue(cid,storage+555884621212,1)
                        db.query("DELETE FROM `z_ots_comunication` WHERE `id` = " .. id .. ";")
                        db.query("UPDATE `z_shop_history_item` SET `trans_state`='realized', `trans_real`=" .. os.time() .. " WHERE id = " .. id .. ";")
                    else
                        doPlayerSendTextMessage(cid, SHOP_MSG_TYPE, ' '.. add_item_name ..' from Aurera-War Shop is waiting for you. Please make place for this item in your backpack/hands and wait about '.. SQL_interval ..' seconds to get it.')
                    end
                else
                    doPlayerSendTextMessage(cid, SHOP_MSG_TYPE, ' '.. add_item_name ..' Aurera-War Shop is waiting for you. It weight is '.. full_weight ..' oz., you have only '.. free_cap ..' oz. free capacity. Put some items in depot and wait about '.. SQL_interval ..' seconds to get it.')
                end
            end
        until not result.next(result_plr)
        result.free(result_plr)
    end
    return true
end--]]

-- ### CONFIG ###
-- message to player "type", if delivery of item debugs client, it can be because of undefinied type (type that does not exist in your server LUA)
SHOP_MSG_TYPE = MESSAGE_EVENT_ADVANCE
-- ### END OF CONFIG ###

function onThink(interval)
	local resultId = db.storeQuery("SELECT * FROM z_ots_comunication")
	if resultId ~= false then
		repeat
			local transactionId = tonumber(result.getDataInt(resultId, "id"))
			local player = Player(result.getDataString(resultId, "name"))

			if player then
				local itemId = result.getDataInt(resultId, "param1")
				local itemCount = result.getDataInt(resultId, "param2")
				local containerId = result.getDataInt(resultId, "param3")
				local containerItemsInsideCount = result.getDataInt(resultId, "param4")
				local shopOfferType = result.getDataString(resultId, "param5")
				local shopOfferName = result.getDataString(resultId, "param6")
				local storage = result.getDataString(resultId, "param7")

-- DELIVER ITEM
				if shopOfferType == 'item' then
					local newItemUID = doCreateItemEx(itemId, itemCount)
					--  item does not exist, wrong id OR count
					if not newItemUID then
						player:sendTextMessage(SHOP_MSG_TYPE, 'Website Shop bugged. Contact with administrator! Error is visible in server console.')
						print('ERROR! Website Shop (' .. player:getName() .. ') - cannot create item - invalid item ID OR count - ITEM ID: ' .. itemId .. ', ITEM COUNT: ' .. itemCount)
						return true
					end
					-- change item UniqueID to object of class Item
					local newItem = Item(newItemUID)

					-- get player store inbox as container, so we can add item to it
					local playerStoreInbox = player:getSlotItem(CONST_SLOT_PURSE)
					-- cannot open Store Inbox, report problem
					if not playerStoreInbox then
						player:sendTextMessage(SHOP_MSG_TYPE, 'Website Shop bugged. Contact with administrator! Error is visible in server console.')
						print('ERROR! Website Shop (' .. player:getName() .. ') - cannot open player "Store Inbox" - it is not supported in your server OR variable "CONST_SLOT_PURSE" is not definied in LUA')
						return true
					end
					-- add container with items to Store Inbox
					receivedItemStatus = playerStoreInbox:addItemEx(newItem)

					if type(receivedItemStatus) == "number" and receivedItemStatus == RETURNVALUE_NOERROR then
						player:sendTextMessage(SHOP_MSG_TYPE, 'You received ' .. shopOfferName .. ' from Website Shop. You can find your item in STORE INBOX (under EQ).')
						db.asyncQuery("DELETE FROM `z_ots_comunication` WHERE `id` = " .. transactionId)
						db.asyncQuery("UPDATE `z_shop_history_item` SET `trans_state`= 'realized', `trans_real`=" .. os.time() .. " WHERE `id` = " .. transactionId)
						
						player:setStorageValue(storage+555884621212,1)
					else
						player:sendTextMessage(SHOP_MSG_TYPE, 'Website Shop bugged. Contact with administrator! Error is visible in server console.')
						print('ERROR! Website Shop (' .. player:getName() .. ') - cannot add item to STORE INBOX - unknown reason, is it\'s size limited and it is full? - ITEM ID: ' .. itemId .. ', ITEM COUNT: ' .. itemCount)
					end

-- DELIVER CONTAINER
				elseif shopOfferType == 'container' then
					-- create empty container
					local newContainerUID = doCreateItemEx(containerId, 1)
					-- container item does not exist OR item is not Container
					if not newContainerUID or not Container(newContainerUID) then
						player:sendTextMessage(SHOP_MSG_TYPE, 'Website Shop bugged. Contact with administrator! Error is visible in server console.')
						print('ERROR! Website Shop (' .. player:getName() .. ') - cannot create container - invalid container ID - CONTAINER ID:' .. containerId)
						return true
					end
					-- change container UniqueID to object of class Container
					local newContainer = Container(newContainerUID)

					-- add items to container
					for i = 1, containerItemsInsideCount do
						-- create new item
						local newItemUID = doCreateItemEx(itemId, itemCount)
						--  item does not exist, wrong id OR count
						if not newItemUID then
							player:sendTextMessage(SHOP_MSG_TYPE, 'Website Shop bugged. Contact with administrator! Error is visible in server console.')
							print('ERROR! Website Shop (' .. player:getName() .. ') - cannot create item - invalid item ID OR count - ITEM ID: ' .. itemId .. ', ITEM COUNT: ' .. itemCount)
							return true
						end
						-- change item UniqueID to object of class Item
						local newItem = Item(newItemUID)

						-- add item to container
						local addItemToContainerResult = newContainer:addItemEx(newItem)
						-- report error if it's not possible to add item to container
						if type(addItemToContainerResult) ~= "number" or addItemToContainerResult ~= RETURNVALUE_NOERROR then
							player:sendTextMessage(SHOP_MSG_TYPE, 'Website Shop bugged. Contact with administrator! Error is visible in server console.')
							print('ERROR! Website Shop (' .. player:getName() .. ') - cannot add item to container - item is not pickable OR variable "RETURNVALUE_NOERROR" is not definied in LUA - ITEM ID: ' .. itemId .. ', ITEM COUNT: ' .. itemCount)
							return true
						end
					end

					-- get player store inbox as container, so we can add item to it
					local playerStoreInbox = player:getSlotItem(CONST_SLOT_PURSE)
					-- cannot open Store Inbox, report problem
					if not playerStoreInbox then
						player:sendTextMessage(SHOP_MSG_TYPE, 'Website Shop bugged. Contact with administrator! Error is visible in server console.')
						print('ERROR! Website Shop (' .. player:getName() .. ') - cannot open player "Store Inbox" - it is not supported in your server OR variable "CONST_SLOT_PURSE" is not definied in LUA')
						return true
					end
					-- add container with items to Store Inbox
					receivedItemStatus = playerStoreInbox:addItemEx(newContainer)

					if type(receivedItemStatus) == "number" and receivedItemStatus == RETURNVALUE_NOERROR then
						player:sendTextMessage(SHOP_MSG_TYPE, 'You received ' .. shopOfferName .. ' from Website Shop. You can find your item in STORE INBOX (under EQ).')
						db.asyncQuery("DELETE FROM `z_ots_comunication` WHERE `id` = " .. transactionId)
						db.asyncQuery("UPDATE `z_shop_history_item` SET `trans_state`= 'realized', `trans_real`=" .. os.time() .. " WHERE `id` = " .. transactionId)
						
						player:setStorageValue(storage+555884621212,1)
					else
						player:sendTextMessage(SHOP_MSG_TYPE, 'Website Shop bugged. Contact with administrator! Error is visible in server console.')
						print('ERROR! Website Shop (' .. player:getName() .. ') - cannot add container with items to STORE INBOX - unknown reason, is it\'s size limited and it is full? - ITEM ID: ' .. itemId .. ', ITEM COUNT: ' .. itemCount .. ', CONTAINER ID:' .. containerId .. ', ITEMS IN CONTAINER COUNT:' .. containerItemsInsideCount)
					end

-- DELIVER YOUR CUSTOM THINGS
				elseif shopOfferType == 'mount' then -- addon, mount etc.
					player:addMount(itemId)
					player:getPosition():sendMagicEffect(CONST_ME_HOLYDAMAGE)
					player:sendTextMessage(SHOP_MSG_TYPE, 'You received ' .. shopOfferName .. ' from Website Shop.')
					db.asyncQuery("DELETE FROM `z_ots_comunication` WHERE `id` = " .. transactionId)
					db.asyncQuery("UPDATE `z_shop_history_item` SET `trans_state`= 'realized', `trans_real`=" .. os.time() .. " WHERE `id` = " .. transactionId)
					player:setStorageValue(storage+555884621212,1)				

				elseif shopOfferType == 'addon' then
					player:addOutfit(itemId)
					player:addOutfitAddon(itemId, 3)
					player:getPosition():sendMagicEffect(CONST_ME_HOLYDAMAGE)
					player:sendTextMessage(SHOP_MSG_TYPE, 'You received ' .. shopOfferName .. ' from Website Shop.')
					db.asyncQuery("DELETE FROM `z_ots_comunication` WHERE `id` = " .. transactionId)
					db.asyncQuery("UPDATE `z_shop_history_item` SET `trans_state`= 'realized', `trans_real`=" .. os.time() .. " WHERE `id` = " .. transactionId)
					player:setStorageValue(storage+555884621212,1)
					
				end
			end
		until not result.next(resultId)
		result.free(resultId)
	end

	return true
end
