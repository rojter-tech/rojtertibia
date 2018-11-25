--Script feito por OTProjects.com.br

dofile("./_woe.lua")

function onLogin(cid)
Woe.getInfo()
local Guild_ID = getPlayerGuildId(cid)
if (infoLua[2] ~= 0) then
if isPremium(cid) and Guild_ID == infoLua[2] then
doPlayerSetExperienceRate(cid, 1.15)
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Você tem "..((1.15 - 1)*100).."% de exp a mais agora! (VIP ACCOUNT + WAR OF EMPERIUM).")
elseif isPremium(cid) and Guild_ID ~= infoLua[2] then
doPlayerSetExperienceRate(cid, 1.1)
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Você tem "..((1.1 - 1)*100).."% de exp a mais agora! (VIP ACCOUNT).")
elseif (not isPremium(cid)) and Guild_ID == infoLua[2] then
doPlayerSetExperienceRate(cid, 1.05)
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Você tem "..((1.05 - 1)*100).."% de exp a mais agora! (WAR OF EMPERIUM).")
else
doPlayerSetExperienceRate(cid, 1)
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Você não possui VIP e sua Guild não conquistou o War of Emperium.")
end
end
return TRUE
end