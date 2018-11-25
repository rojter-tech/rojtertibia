-- Edit por Igor Pereira
-- 22/10/2013
-- Reload Spoofing Automatic
local spoofTable = { -- [hora] = Spoof
            [01] = 1, -- So alterar o Spoof
            [02] = 2, -- So alterar o Spoof
            [03] = 3, -- So alterar o Spoof
            [04] = 4, -- So alterar o Spoof
            [05] = 5, -- So alterar o Spoof
            [06] = 6, -- So alterar o Spoof
            [07] = 7, -- So alterar o Spoof
            [08] = 8, -- So alterar o Spoof
            [09] = 9, -- So alterar o Spoof
            [10] = 10, -- So alterar o Spoof
            [11] = 11, -- So alterar o Spoof
            [12] = 12, -- So alterar o Spoof
            [13] = 13, -- So alterar o Spoof
            [14] = 14, -- So alterar o Spoof
            [15] = 15, -- So alterar o Spoof
            [16] = 16, -- So alterar o Spoof
            [17] = 17, -- So alterar o Spoof
            [18] = 18, -- So alterar o Spoof
            [19] = 19, -- So alterar o Spoof
            [20] = 20, -- So alterar o Spoof			
            [21] = 21, -- So alterar o Spoof
            [22] = 22, -- So alterar o Spoof
            [23] = 23, -- So alterar o Spoof
            [00] = 24 -- So alterar o Spoof			
        }

function onTime()
    if getGlobalStorageValue(7646) < os.time() then
        local newSpoof = false
        setGlobalStorageValue(7646, os.time() + 3600)
        for hour, exp in pairs(spoofTable) do
            if tonumber(hour) == tonumber(os.date("%H")) then
                newSpoof = exp
                break
            end
        end
        
        if not newSpoof then return true end
        local file = io.open("config.lua", "r")
        local content = file:read("*a")
        local tmp = string.explode(content, "\n")
        file:close()

        for line, str in pairs(tmp) do
            if string.find(str, "spoofPlayers") then -- oque mudar
                tmp[line] = "    spoofPlayers =" ..newSpoof -- oque mudar e alterar
                break
            end
        end
        local file = io.open("config.lua", "w+")
        file:write(table.concat(tmp, "\n"))
        file:close()
        doReloadInfo(RELOAD_CONFIG)
    end
    return true
end