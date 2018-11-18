-- VIKING TIBIA 

function onThink(interval, lastExecution)
    local MESSAGE = {
        "[COMMANDS] !kills - !bless - !aol - !buyhouse - !sellhouse - !serverinfo - !online - !uptime - !exp - !outfit - !autoloot .",
        "[TIBIA CLIENT UPDATED] http://www.lumina-global.net/?subtopic=downloads Use our Own Client to avoid debugs and can use all the functions of the server.",
		"[SECURITY] Do not use the same passwords of others otservers, they can hack your account (use diferent accounts).",
		"[RULES] http://www.lumina-global.net/?subtopic=tibiarules Read the rules to avoid punishments.",
		"[FACEBOOK] https://www.facebook.com/lumina.global/",
    }
    Game.broadcastMessage(MESSAGE[math.random(1, #MESSAGE)], MESSAGE_EVENT_ADVANCE) 
    return true
end