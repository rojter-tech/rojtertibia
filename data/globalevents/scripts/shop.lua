function onThink(interval, lastExecution, thinkInterval)

   local result = db.getResult("SELECT * FROM shop_history WHERE `processed` = 0;")
   
      if(result:getID() ~= -1) then
         while(true) do
            cid = getCreatureByName(tostring(result:getDataString("player")))
            product = tonumber(result:getDataInt("product"))
            itemr = db.getResult("SELECT * FROM shop_offer WHERE `id` = "..product..";")
               if isPlayer(cid) then
local um_um = {1,2,3,4,5,6,7,8,9,0}
um = um_um[math.random(1, #um_um)]

local dois_dois = {1,2,3,4,5,6,7,8,9,0}
dois = dois_dois[math.random(1, #dois_dois)]

local tres_tres = {1,2,3,4,5,6,7,8,9,0}
tres = tres_tres[math.random(1, #tres_tres)]

local quatro_quatro = {1,2,3,4,5,6,7,8,9,0}
quatro = quatro_quatro[math.random(1, #quatro_quatro)]

                  local id = tonumber(itemr:getDataInt("item"))
                  local tid = tonumber(result:getDataInt("id"))
                  local count = tonumber(itemr:getDataInt("count"))
                  local tipe = tonumber(itemr:getDataInt("type"))
                  local productn = tostring(itemr:getDataString("name"))
                     if isInArray({5,8},tipe) then
                        if getPlayerFreeCap(cid) >= getItemWeightById(id, count) then
                           if isContainer(getPlayerSlotItem(cid, 3).uid) then
                              received = doAddContainerItem(getPlayerSlotItem(cid, 3).uid, id,count)
                              if received then
                              doItemSetAttribute(received, "description", 'Bought by ' .. getCreatureName(cid) .. ' [ID:' .. um .. '' .. dois .. '' .. tres .. '' .. quatro .. '].')
                                 doPlayerSendTextMessage(cid,19, "You have received >> "..productn.." << from our shop system")
                                 db.executeQuery("UPDATE `shop_history` SET `processed`='1' WHERE id = " .. tid .. ";")
								f = io.open("data/logs/Shop/Shop.txt", "a+")
								f:write("Player : 'Bought by ".. getCreatureName(cid) .." [ID: ".. um .."".. dois .."".. tres .."".. quatro .."] Item : "..productn.." - "..getCreatureName(cid).."\n----------------------------------------------------------\n")
								f:close()
                              else
                                 doPlayerSendTextMessage(cid,19, "Sorry, you don't have enough space on container to receive >> "..productn.." <<")
                              end
                           else
                              doPlayerSendTextMessage(cid,19, "Sorry, you don't have a container to receive >> "..productn.." <<")
                           end
                        else
                           doPlayerSendTextMessage(cid,19, "Sorry, you don't have enough capacity to receive >> "..productn.." << (You need: "..getItemWeightById(id, count).." Capacity)")
                        end
                     elseif isInArray({6,7},tipe) then
                           if tipe == 6 then
                              bcap = 8
                              bid = 1987
                           elseif tipe == 7 then
                              bcap = 20
                              bid = 1988
                           end
                           if isItemRune(id) then
                              count = 1
                           end
                           if getPlayerFreeCap(cid) >= (getItemWeightById(1987, 1) + getItemWeightById(id,count * bcap)) then
                              local bag = doCreateItemEx(bid, 1)
                                 for i = 1,bcap do
                                    doAddContainerItem(bag, id, count)
                                 end
                              received = doPlayerAddItemEx(getPlayerSlotItem(cid, 3).uid, bag)
                              if received == RETURNVALUE_NOERROR then
                                 doPlayerSendTextMessage(cid,19, "You have received >> "..productn.." << from our shop system")
                                 db.executeQuery("UPDATE `shop_history` SET `processed`='1' WHERE id = " .. tid .. ";")
                              else
                                 doPlayerSendTextMessage(cid,19, "Sorry, you don't have enough space to receive >> "..productn.." <<")
                              end
                           else
                              doPlayerSendTextMessage(cid,19, "Sorry, you don't have enough capacity to receive >> "..productn.." << (You need: "..getItemWeightById(id, count).." Capacity)")
                           end
                     end
               end
            itemr:free()
            if not(result:next()) then
               break
            end
         end
         result:free()
      end
   return true
end