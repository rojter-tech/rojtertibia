local config = {
level = 10,
days = 1,
storageId = 15558,
msg = "Parabéns, por jogar Offensive Global, você recebeu 1 dia de VIP gratis, desloga-se e loga-se para mudar a sua vocação!!!",
msgtype = MESSAGE_EVENT_ADVANCE
}

function onAdvance(cid, oldLevel, newLevel)
if (getPlayerLevel(cid) >= config.level and getGlobalStorageValue(getPlayerAccountId(cid)+450) <= 0) then
setGlobalStorageValue(getPlayerAccountId(cid)+450, 1)
vip.addVipByAccount(getPlayerAccount(cid) ,vip.getDays(config.days))
doPlayerSendTextMessage(cid, config.msgtype, config.msg)

end

return TRUE
end