local newpos = {x=398, y=1385, z=9}
function onStepIn(cid, item, position, fromPosition)
      doSendMagicEffect(getPlayerPosition(cid), 2)
      doTeleportThing(cid,newpos)
      doSendMagicEffect(newpos,10)
end