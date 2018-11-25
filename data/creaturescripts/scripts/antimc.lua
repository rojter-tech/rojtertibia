--[[
Anti MB Igor Pereira
]]--

local config = {
msg = "Este servidor usa ANTI Multi Client para reducao de Lags e deBugs.",
maxMultiClients = 3,
allowGroupId = 2,
ignoreIps = {}
}

function onLogin(cid)

if getPlayerGroupId(cid) >= config.allowGroupId then
return TRUE
end

local number
local playersOnline = getPlayersOnline()

for _, pid in pairs(playersOnline) do
local pip = getPlayerIp(pid)
if cid ~= pid and getPlayerIp(cid) == pip and not isInArray(config.ignoreIps, doConvertIntegerToIp(getPlayerIp(cid))) then
number = (number or 0) + 1
if number > config.maxMultiClients then
return FALSE, doPlayerPopupFYI(cid, config.msg)
end
end
end

return TRUE
end