GuildPointsConfigs =
{
ExecuteIntervalHours = 24,
NeedPlayersOnline = 5,
NeedDiferentIps = 5,
MinLevel = 100,
AddPointsForAcc = 200
}

function getGuildPlayersValidAccIDS(GuildID, MinLevel)
local RanksIDS = {}
local AccsID = {}
local ValidAccsID = {}
Query1 = db.getResult("SELECT `id` FROM `guild_ranks` WHERE guild_id = '".. GuildID .."'")
if(Query1:getID() == -1) then
return ValidAccsID
end
for i = 1, Query1:getRows() do
table.insert(RanksIDS, Query1:getDataInt("id"))
Query1:next()
end
Query2 = db.getResult("SELECT `account_id` FROM `players` WHERE `rank_id` IN (".. table.concat(RanksIDS, ', ') ..") AND `level` >= ".. MinLevel .."")
if(Query2:getID() == -1) then
return ValidAccsID
end
for i = 1, Query2:getRows() do
local AccID = Query2:getDataInt("account_id")
if #AccsID > 0 then
for k = 1, #AccsID do
if AccID == AccsID[k] then
AddAccList = false
break
end
AddAccList = true
end
if AddAccList then
table.insert(AccsID, AccID)
end
else
table.insert(AccsID, AccID)
end
Query2:next()
end
Query3 = db.getResult("SELECT `id` FROM `accounts` WHERE `guild_points_stats` = 0 AND `id` IN (".. table.concat(AccsID, ', ') ..")")
if(Query3:getID() == -1) then
return ValidAccsID
end
for i = 1, Query3:getRows() do
local AccID = Query3:getDataInt("id")
if #ValidAccsID > 0 then
for k = 1, #ValidAccsID do
if AccID == ValidAccsID[k] then
AddAccList = false
break
end
AddAccList = true
end
if AddAccList then
table.insert(ValidAccsID, AccID)
end
else
table.insert(ValidAccsID, AccID)
end
Query3:next()
end
return ValidAccsID
end

function onSay(cid, words, param, channel)
if(getPlayerGuildLevel(cid) == 3) then
local GuildID = getPlayerGuildId(cid)
Query = db.getResult("SELECT `last_execute_points` FROM `guilds` WHERE id = '".. GuildID .."'")
if(Query:getID() == -1) then
return true
end
if Query:getDataInt("last_execute_points") < os.time() then
local GuildMembers = {}
local GuildMembersOnline = {}
local PlayersOnline = getPlayersOnline()
for i, pid in ipairs(PlayersOnline) do
if getPlayerGuildId(pid) == GuildID then
if getPlayerLevel(pid) >= GuildPointsConfigs.MinLevel then
table.insert(GuildMembersOnline, pid)
end
end
end
if #GuildMembersOnline >= GuildPointsConfigs.NeedPlayersOnline then
local IPS = {}
for i, pid in ipairs(GuildMembersOnline) do
local PlayerIP = getPlayerIp(pid)
if #IPS > 0 then
for k = 1, #IPS do
if PlayerIP == IPS[k] then
AddIPList = false
break
end
AddIPList = true
end
if AddIPList then
table.insert(IPS, PlayerIP)
end
else
table.insert(IPS, PlayerIP)
end
end
if #IPS >= GuildPointsConfigs.NeedDiferentIps then
local ValidAccounts = getGuildPlayersValidAccIDS(GuildID, GuildPointsConfigs.MinLevel)
db.executeQuery("UPDATE `guilds` SET `last_execute_points` = ".. os.time() + (GuildPointsConfigs.ExecuteIntervalHours * 3600) .." WHERE `guilds`.`id` = ".. GuildID ..";")
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_ORANGE, "".. #ValidAccounts .." Jogadores receberam os Pontos! Este comando pode usado novamente apos as proximas 24 horas.")
if #ValidAccounts > 0 then
db.executeQuery("UPDATE `accounts` SET `guild_points` = 200, `guild_points_stats` = ".. os.time() + (GuildPointsConfigs.ExecuteIntervalHours * 3600) .." WHERE `id` IN (" .. table.concat(ValidAccounts, ',') .. ");")
for i, pid in ipairs(GuildMembersOnline) do
local PlayerMSGAccID = getPlayerAccountId(pid)
for k = 1, #ValidAccounts do
if PlayerMSGAccID == ValidAccounts[k] then
doPlayerSendTextMessage(pid, MESSAGE_INFO_DESCR, "Voce recebeu ".. GuildPointsConfigs.AddPointsForAcc .." Guild Points, lembre-se o lider que ele pode usar este comando nas proximas 24 horas novamente!!!")
break
end
end
end
end
else
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_ORANGE, "Nao adianta criar Maker, voce nao conseguira pegar seus Pontos! Chame seus amigos com Ips diferentes!")
end
else
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_ORANGE, "Voce tem ".. #GuildMembersOnline .." players online voce precisa ".. GuildPointsConfigs.NeedPlayersOnline .." players online e com o level ".. GuildPointsConfigs.MinLevel ..".")
end
else
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_ORANGE, "The command can only be run once every ".. GuildPointsConfigs.ExecuteIntervalHours .." hours.")
end
else
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_ORANGE, "Somente o lider da guild pode executar o comando.")
end
return true
end