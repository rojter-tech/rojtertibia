function onLogin(cid) 
 
local rate = 1.3 -- 30% 
local config = { 
vip = "Você tem "..((rate - 1)*100).."% de exp a mais agora!", 
notvip = "Você não é VIP, vire um VIP e tenha "..((rate - 1)*100).."% a mais de experiencia!", 
} 
 
if vip.hasVip(cid) == FALSE then  
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, config.notvip) 
else 
doPlayerSetExperienceRate(cid, rate) 
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, config.vip) 
end 
return TRUE 
end