function onStepIn(cid, item, position, fromPosition)

local tileConfig = {
        kickPos = {x=60, y=70, z=6},
        kickEffect = CONST_ME_POFF,
        kickMsg = "Você precisa ser Premium Account para entrar nessa Area.",
        enterMsg = "Bem Vindo a Area Premium!",
        enterEffect = CONST_ME_MAGIC_BLUE,
}
	if isPremium(cid) == TRUE and item.actionid == 13505 then
        doPlayerSendTextMessage(cid, 25, tileConfig.enterMsg)
        doSendMagicEffect(position, tileConfig.enterEffect)

        return
    end

        doTeleportThing(cid, tileConfig.kickPos)
        doSendMagicEffect(tileConfig.kickPos, tileConfig.kickEffect)
        doPlayerSendCancel(cid, tileConfig.kickMsg)
        return true
end