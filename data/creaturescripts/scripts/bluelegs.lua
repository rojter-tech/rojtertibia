function onDeath(cid, corpse, killer)

registerCreatureEvent(cid, "bluelegs")

local creaturename = getCreatureName(cid)
local koshei_in_position = {x=33271, y=32407, z=12, stackpos=2}
local koshei_to_position = {x=33266, y=32446, z=12, stackpos=1}

local time_to_pass = 180
local tpID = 5023
local doEffect = CONST_ME_ENERGYHIT
local message = "GOOO! You have only 3 minutes to enter the teleport!"

if creaturename == 'Koshei The Deathless' then

teleport = doCreateTeleport(tpID, koshei_to_position, koshei_in_position)
doSendMagicEffect(koshei_in_position, CONST_ME_ENERGYHIT)
doCreatureSay(cid,message,TALKTYPE_ORANGE_1)
addEvent(removeTeleportInKosheiWard, (1000*time_to_pass))
end
end

function removeTeleportInKosheiWard()
if getThingfromPos({x=33271, y=32407, z=12, stackpos=1}).itemid == 5023 then
doRemoveItem(getThingfromPos({x=33271, y=32407, z=12, stackpos=1}).uid,1)
doSendMagicEffect({x=33271, y=32407, z=12, stackpos=1}, CONST_ME_POFF)
return TRUE
end
end