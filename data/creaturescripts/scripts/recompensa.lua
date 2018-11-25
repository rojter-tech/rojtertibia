local config = {
level = 50, -- level que irá ganhar
storage = 9557, -- storage
msg = "Você ganhou 50k por avançar ao level 50.", -- mensagem ao ganhar
qnt = 5; -- quantidade de crystal coin
msgtp = MESSAGE_EVENT_ADVANCE, -- tipo da mensagem
itemid = 2160, -- id do crystal coin (pode mudar se quiser)
}

function onAdvance(cid, oldLevel, newLevel)
if getPlayerStorageValue(cid, config.storage) < 1 and getPlayerLevel(cid) >= config.level then
doPlayerAddItem(cid, config.itemid, config.qnt)
setPlayerStorageValue(cid, config.storage, 1)
doPlayerSendTextMessage(cid, config.msgtp, config.msg)
end
return TRUE
end