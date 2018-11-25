function onSay (cid, words, param, channel)
        local preco = 10000  -- gold coins
        local wornId = 10021 -- id da worn soft boots, bota descarregada
        local newId = 2640 -- id da nova soft boots, bota carregada

        if getPlayerItemCount(cid, wornId) >= 1 and getPlayerMoney(cid) >= preco then
                doSendMagicEffect(getPlayerPosition(cid), 12)
        doPlayerRemoveItem(cid, 10021, 1)
        doPlayerAddItem(cid, newId)
        doPlayerRemoveMoney(cid, preco)
            doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Você recarregou sua soft por "..preco.." gps.")
    else
        doSendMagicEffect(getPlayerPosition(cid), 2)
                doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Você não tem "..preco.." gps ou uma worn soft boots para poder recarregar.")
        return TRUE

        end
end