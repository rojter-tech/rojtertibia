local config = {

need_Premium = "sim", -- "sim" ou "nao" / Se precisa de Premium

effect = 30 -- Numero do Efeito

remove_on_use = "sim" -- "sim" ou "nao" / se vai remover ao usar

stamina = 2520 -- Quanto de Stamina / 1 = 1 minuto

}



function onUse(cid)

if config.need_Premium == "sim" and if not isPremium(cid) then

doPlayerSendCancel(cid, "You need premium.")

return false

end


doPlayerAddStamina(cid, config.stamina)

doSendMagicEffect(getThingPos(cid), config.effect)


if config.remove_on_use == "sim" then

doRemoveItem(item.uid, 1)

return true

end