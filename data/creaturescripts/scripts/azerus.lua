local config = {
    message = "Azerus ran into teleporter! It will disappear in 2 minutes. Enter It!",
    teleportId = 1387,
    bosses = { -- Monster Name, Teleport To Position, Teleport Position
        ["Azerus"] = {{x=581, y=577, z=9}, {x=581, y=575, z=10}},



            }
}

function onDeath(cid, corpse, killer)
    local position = getCreaturePosition(cid)
    for name, pos in pairs(config.bosses) do
        if name == getCreatureName(cid) then

        doCreateTeleport(config.teleportId, pos[1], pos[2])
        doCreatureSay(cid, config.message, TALKTYPE_ORANGE_1)
        end
    end
    return TRUE
end  