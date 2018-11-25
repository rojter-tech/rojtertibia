function onDeath(cid, corpse, deathList)
local config = {
onlypremium = true, -- se precisa ser premium para não perder nada
levelandskills = false, -- se ao morrer o jogador irá perder level e skill
loot = false, -- se ao morrer o jogador irá perder o loot
level = 100 -- até que level irá proteger o player
}
if isPlayer(cid) and getPlayerLevel(cid) <= config.level then
if config.onlypremium == true and not isPremium(cid) then return TRUE end
if config.loot == false then doCreatureSetDropLoot(cid, false) end
if config.levelandskills == false then doPlayerSetLossSkill(cid, 0) end
return TRUE end return TRUE end