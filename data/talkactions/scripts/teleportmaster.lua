-- [[ Teleport talkaction - By: DoidinMapper ]] --
function onSay(cid, words, param)
pos = {x=32316, y=31942, z=7}
if words == '/t' then
doTeleportThing(cid, pos)
doSendMagicEffect(pos, 10)
return TRUE
end
end