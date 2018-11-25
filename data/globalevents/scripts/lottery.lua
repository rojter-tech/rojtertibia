-- Lottery System
local config = {
    lottery_hour = "3 Hours", -- Tempo ate a proxima loteria (Esse tempo vai aparecer somente como broadcast message)
    rewards_id = {2160, 8304, 6570}, -- ID dos Itens Sorteados na Loteria
    crystal_counts = 10, -- Usado somente se a rewards_id for crystal coin (ID: 2160).
    website = "yes" -- Only if you have php scripts and table `lottery` in your database!
    }
function onThink(interval, lastExecution)
        if(getWorldCreatures(0) == 0)then
                return true
        end
 
    local list = {}
    for i, tid in ipairs(getPlayersOnline()) do
                list[i] = tid
        end

        local winner = list[math.random(1, #list)]
        local random_item = config.rewards_id[math.random(1, #config.rewards_id)]
        
        if(random_item == 2160) then
                doPlayerAddItem(winner, random_item, config.crystal_counts)
                doBroadcastMessage("[LOTTERY] Winner: " .. getCreatureName(winner) .. ", Reward: " .. config.crystal_counts .. " " .. getItemNameById(random_item) .. "s! Congratulations! (Proxima Loteria em " .. config.lottery_hour .. ")")
        else
                doBroadcastMessage("[LOTTERY] Winner: " .. getCreatureName(winner) .. ", Reward: " .. getItemNameById(random_item) .. "! Congratulations! (Proxima Loteria em " .. config.lottery_hour .. ")")
                doPlayerAddItem(winner, random_item, 1)
        end
       
        if(config.website == "yes") then
                db.executeQuery("INSERT INTO `lottery` (`name`, `item`) VALUES ('".. getCreatureName(winner) .."', '".. getItemNameById(random_item) .."');")
        end
        return true
end