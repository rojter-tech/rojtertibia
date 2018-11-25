local config = {
level = 100, -- level que irá ganhar
storage = 9559, -- storage
msg = "Você ganhou 100k por avançar ao level 100.", -- mensagem ao ganhar
qnt = 10; -- quantidade de crystal coin
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