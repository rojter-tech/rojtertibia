--function by Armageddom--
function onStepIn(cid, item, frompos, item2, topos) 

 
local novapos = {x=449, y=1328, z=9} 

if item.uid == 10253 then

getThingfromPos(getPlayerPosition(cid)) 
doSendMagicEffect(getPlayerPosition(cid),2) 
doTeleportThing(cid,novapos) 
doSendMagicEffect(novapos,10) 
end 
end