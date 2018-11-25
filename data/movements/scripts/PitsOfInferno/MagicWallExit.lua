--function by Armageddom--
function onStepIn(cid, item, frompos, item2, topos) 

local novapos = {x=398, y=1384, z=9} 

if item.uid == 10202 then
doTeleportThing(cid,novapos) 
doSendMagicEffect(novapos,10)
end 
end