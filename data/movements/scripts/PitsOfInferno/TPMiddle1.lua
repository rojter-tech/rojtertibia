---function by Armageddom--
function onStepIn(cid, item, frompos, item2, topos) 

 
local novapos = {x=449, y=1326, z=9} 

if item.uid == 10251 then

getThingfromPos(getPlayerPosition(cid)) 
doSendMagicEffect(getPlayerPosition(cid),2) 
doTeleportThing(cid,novapos) 
doSendMagicEffect(novapos,10) 
end 
end