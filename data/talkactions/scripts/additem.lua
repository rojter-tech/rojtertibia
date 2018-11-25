function onSay(cid, words, param)
local espaco = string.explode(param, ",")
if espaco[1] and espaco[2] and espaco[3] and isPlayer(getCreatureByName(espaco[1])) then
local player = getCreatureByName(espaco[1])
doPlayerAddItem(player,espaco[2],espaco[3])
doPlayerSave(player)
doPlayerSendTextMessage(cid, 25, "Voce adicinou ".. espaco[3] .." ".. getItemNameById(espaco[2]) .." [ID: ".. espaco[2] .."] para o player ".. espaco[1] ..".")
doPlayerSendTextMessage(player, 25, "Voce recebeu um item do servidor.")
else
doPlayerSendTextMessage(cid, 25, "Parametros incorretos. Utilize: /additem NOME, ID, QNTD.")
end
return TRUE
end