function onDeath(cid, corpse, killer)

registerCreatureEvent(cid, "inquisitionPortals")

local creaturename = getCreatureName(cid)

local ushuriel_in_position = {x=246, y=351, z=12, stackpos=2}
local annihilon_in_position = {x=637, y=472, z=13, stackpos=2}
local hellgorak_in_position = {x=335, y=581, z=10, stackpos=2}
local madareth_in_position = {x=340, y=460, z=13, stackpos=2}
local zugurosh_in_position = {x=390, y=525, z=13, stackpos=2}
local brothers_in_position = {x=505, y=345, z=13, stackpos=1}

local ushuriel_to_position = {x=172, y=559, z=13, stackpos=1}
local annihilon_to_position = {x=294, y=681, z=13, stackpos=1}
local hellgorak_to_position = {x=255, y=467, z=13, stackpos=1}
local madareth_to_position = {x=287, y=365, z=13, stackpos=1}
local zugurosh_to_position = {x=314, y=474, z=13, stackpos=1}
local brothers_to_position = {x=408, y=413, z=13, stackpos=1}

local time_to_pass = 180
local tpID = 5023
local doEffect = CONST_ME_ENERGYHIT
local message = "You now have 3 minutes to exit this room through the teleporter. It will bring you to the next room only during his time or the teleporter will disappear."

if creaturename == 'Ushuriel' then

teleport = doCreateTeleport(tpID, ushuriel_to_position, ushuriel_in_position)

doSendMagicEffect(ushuriel_in_position, CONST_ME_ENERGYHIT)

doCreatureSay(cid, message, TALKTYPE_ORANGE_1)

addEvent(removeTeleportInUshurielWard, (1000*time_to_pass))

elseif creaturename == 'Annihilon' then

teleport = doCreateTeleport(tpID, annihilon_to_position, annihilon_in_position)

doSendMagicEffect(annihilon_in_position, CONST_ME_ENERGYHIT)

doCreatureSay(cid, message, TALKTYPE_ORANGE_1)

addEvent(removeTeleportInAnnihilonWard, (1000*time_to_pass))

elseif creaturename == 'Madareth' then

teleport = doCreateTeleport(tpID, madareth_to_position, madareth_in_position)

doSendMagicEffect(madareth_in_position, CONST_ME_ENERGYHIT)

doCreatureSay(cid, message, TALKTYPE_ORANGE_1)

addEvent(removeTeleportInMadarethWard, (1000*time_to_pass))

elseif creaturename == 'Hellgorak' then

teleport = doCreateTeleport(tpID, hellgorak_to_position, hellgorak_in_position)

doSendMagicEffect(hellgorak_in_position, CONST_ME_ENERGYHIT)

doCreatureSay(cid, message, TALKTYPE_ORANGE_1)

addEvent(removeTeleportInHellgorakWard, (1000*time_to_pass))

elseif creaturename == 'Zugurosh' then

teleport = doCreateTeleport(tpID, zugurosh_to_position, zugurosh_in_position)

doSendMagicEffect(zugurosh_in_position, CONST_ME_ENERGYHIT)

doCreatureSay(cid, message, TALKTYPE_ORANGE_1)

addEvent(removeTeleportInZuguroshWard, (1000*time_to_pass))

elseif creaturename == 'Latrivan' then

teleport = doCreateTeleport(tpID, brothers_to_position, brothers_in_position)

doSendMagicEffect(brothers_in_position, CONST_ME_ENERGYHIT)

doCreatureSay(cid, message, TALKTYPE_ORANGE_1)

addEvent(removeTeleportInBrothersWard, (1000*time_to_pass))


end
end

function removeTeleportInUshurielWard()
if getThingfromPos({x=246, y=351, z=12, stackpos=1}).itemid == 5023 then
doRemoveItem(getThingfromPos({x=246, y=351, z=12, stackpos=1}).uid,1)
doSendMagicEffect({x=246, y=351, z=12, stackpos=1}, CONST_ME_POFF)
return TRUE
end
end

function removeTeleportInAnnihilonWard()
if getThingfromPos({x=637, y=472, z=13, stackpos=1}).itemid == 5023 then
doRemoveItem(getThingfromPos({x=637, y=472, z=13, stackpos=1}).uid,1)
doSendMagicEffect({x=637, y=472, z=13, stackpos=1}, CONST_ME_POFF)
return TRUE
end
end

function removeTeleportInHellgorakWard()
if getThingfromPos({x=335, y=581, z=10, stackpos=1}).itemid == 5023 then
doRemoveItem(getThingfromPos({x=335, y=581, z=10, stackpos=1}).uid,1)
doSendMagicEffect({x=335, y=581, z=10, stackpos=1}, CONST_ME_POFF)
return TRUE
end
end

function removeTeleportInMadarethWard()
if getThingfromPos({x=340, y=460, z=13, stackpos=1}).itemid == 5023 then
doRemoveItem(getThingfromPos({x=340, y=460, z=13, stackpos=1}).uid,1)
doSendMagicEffect({x=340, y=460, z=13, stackpos=1}, CONST_ME_POFF)
return TRUE
end
end

function removeTeleportInZuguroshWard()
if getThingfromPos({x=390, y=525, z=13, stackpos=1}).itemid == 5023 then
doRemoveItem(getThingfromPos({x=390, y=525, z=13, stackpos=1}).uid,1)
doSendMagicEffect({x=390, y=525, z=13, stackpos=1}, CONST_ME_POFF)
return TRUE
end
end

function removeTeleportInBrothersWard()
if getThingfromPos({x=505, y=345, z=13, stackpos=1}).itemid == 5023 then
doRemoveItem(getThingfromPos({x=505, y=345, z=13, stackpos=1}).uid,1)
doSendMagicEffect({x=505, y=345, z=13, stackpos=1}, CONST_ME_POFF)
return TRUE
end
end 