function onSay(cid, words, param)
if(words == "!buyaol") then
if(doPlayerRemoveMoney(cid, 10000) == TRUE) then
doPlayerAddItem(cid,2173,1)
doSendMagicEffect(getCreaturePosition(cid),tmp, CONST_ME_MAGIC_RED) 
else
doPlayerSendCancel(cid, "Você não tem o dinheiro suficiente.")
return TRUE
end


elseif(words == "!sellaol") then
if doPlayerRemoveItem(cid,2173,1) == TRUE then
doPlayerAddMoney(cid, 10000)
doSendMagicEffect(getCreaturePosition(cid),tmp, CONST_ME_MAGIC_RED) 
else
doPlayerSendCancel(cid, "Você não tem o Amulet of Loss(AoL)")
end
end
return TRUE
end