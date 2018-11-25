function onStepIn(cid, item, position, fromPosition)

local config = {
msgDenied = "Você não possui a vocação para passar.",
msgWelcome = "Seja bem vindo."
}

if(isInArray({1, 2, 3, 4}, getPlayerVocation(cid))) then 
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, config.msgWelcome)
return TRUE
end
doTeleportThing(cid, fromPosition, true)
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, config.msgDenied)
doSendMagicEffect(getThingPos(cid), CONST_ME_MAGIC_BLUE)
return TRUE
end