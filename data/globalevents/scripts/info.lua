-- [( Script created by DoidinMapper )] --
function onThink(interval, lastExecution)
MENSAGEM = {
"Ranks: !rank level / !rank axe / !rank magic...",
"Notices: !notice",
"Premium: !premium",
"Bless: !bless",
"Acess: XTibia.com",
}
doBroadcastMessage(MENSAGEM[math.random(1,#MENSAGEM)],22)
return TRUE
end