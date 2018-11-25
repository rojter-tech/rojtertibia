local config = {
tempo = 10,
storage = 20000,
teleport = {x=32360, y=31782, z=7}
}

function onStepIn(cid, item, frompos, topos)
if getPlayerStorageValue(cid, config.storage) <= 0 then
addEvent(setPlayerStorageValue, config.tempo*60*1000-1000, cid, config.storage, -1)
addEvent(doTeleportThing, config.tempo*60*1000-500, cid, config.teleport)
kick = addEvent(doRemoveCreature, config.tempo*60*1000, cid)
doCreatureSay(cid, "Trainer says: Move around every 10 minutes, otherwise your character will be kicked.", 19)
setPlayerStorageValue(cid, config.storage, 1)
end
end

function onStepOut(cid, item, frompos, topos)
if getPlayerStorageValue(cid, config.storage) >= 1 then
setPlayerStorageValue(cid, config.storage, -1)
doPlayerSendTextMessage(cid, 20, "System kick off!")
stopEvent(kick)
end
end