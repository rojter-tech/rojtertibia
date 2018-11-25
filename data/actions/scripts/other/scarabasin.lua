----- Coal Basin with Scarab Coin, teleporting by Rike-------
function onUse(cid, item, frompos, item2, topos)

scarabpos = {x=33233, y=32692, z=13, stackpos=255}
scarab = getThingfromPos(scarabpos)

telepos = {x=33234,y=32687,z=13,stackpos=1}

beforepos = getPlayerPosition(cid)

effect1pos = {x=33234,y=32692,z=13,stackpos=1}

if scarab.itemid == 2159 and beforepos.x == 33234 and beforepos.y == 32692 and beforepos.z == 13 then
doTeleportThing(cid,telepos)
doSendMagicEffect(effect1pos,12)
doSendMagicEffect(telepos,10)
doSendMagicEffect(scarabpos,2)
doRemoveItem(scarab.uid,1)

else

doPlayerSendCancel(cid,"You need to stay in the fire.")

end
if item.itemid == 1485 then
doPlayerSendCancel(cid,"Put scarab coins on coal basin.")

end
return 1
end