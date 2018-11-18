local BlockedChannels = {
{channel = CHANNEL_DEFAULT},
{channel = CHANNEL_HELP, type = TALKTYPE_CHANNEL_Y},
{channel = CHANNEL_GUILD, type = TALKTYPE_CHANNEL_Y}
}

local InvalidWords = {
"whore",
"slut",
"fuck",
"mother~fucker"
}

function onSay(cid, words, param, channel)
local TheWords = words .. param
for i, select in ipairs(BlockedChannels) do
if select.channel == channel then
talkType = select.type
break
elseif select.channel ~= channel and i == #BlockedChannels then
return false
end
end

for i = 1, #InvalidWords do
TheWords = TheWords:gsub("(%a*".. nocase(InvalidWords[i]) .."%a*)", doFixString(InvalidWords[i]))
end

if channel == CHANNEL_DEFAULT then
doCreatureSay(cid, TheWords, TALKTYPE_SAY)
else
doPlayerSendChannelMessage(cid, getCreatureName(cid), TheWords, talkType, channel)
end
return true
end

function doFixString(w)
return ("*"):rep(w:len())
end

function nocase(s)
-- From: Programming in Lua : 20.4
return s:gsub("%a", function(c) return ("[%s%s]"):format(c:lower(), c:upper()) end)
end