function onUse(cid, item, frompos, item2, topos)
	local config = {
		pz = false, -- false = não precisa estar em protect zone
		battle = true, -- true = não pode ter battle
		remover = true, -- true = remove o item
	}
	local cidade = getTownTemplePosition(getPlayerTown(cid))
	local posicao = getCreaturePosition(cid)
	
	if config.pz == true and getTilePzInfo(posicao) == FALSE then
		doPlayerSendTextMessage(cid, MESSAGE_EVENT_DEFAULT,"Você precisa estar em protection zone pra poder teleportar.")
	elseif config.battle == true and getCreatureCondition(cid, CONDITION_INFIGHT) == TRUE then
		doPlayerSendTextMessage(cid, MESSAGE_EVENT_DEFAULT, "Você precisa estar sem battle pra poder teleportar.")
	else
		if config.remover == true then
			doRemoveItem(item.uid)
		end
		doSendMagicEffect(posicao, CONST_ME_POFF)
		doTeleportThing(cid, cidade)
		doSendMagicEffect(cidade, CONST_ME_TELEPORT)
		doPlayerSendTextMessage(cid, MESSAGE_EVENT_DEFAULT, "Voce foi teleportado e o town scroll destruido.")
	end
	return true
end