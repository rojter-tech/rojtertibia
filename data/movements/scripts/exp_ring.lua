function onEquip(cid, item, slot)


local rate = {}


if getPlayerLevel(cid) <= 200 then

rate = 1.3

elseif getPlayerLevel(cid) > 200 and getPlayerLevel(cid) <= 280 then

rate = 1.15

elseif getPlayerLevel(cid) > 280 then

rate = 1.05

end


doTransformItem(item.uid, 7697, 1)

doPlayerSendTextMessage(cid, 22, "Sua experiencia foi aumentada em "..((rate - 1)*100).." %.")

doPlayerSetExperienceRate(cid, rate)

return TRUE

end


function onDeEquip(cid, item, slot)

doTransformItem(item.uid, 7708, 1)

doPlayerSendTextMessage(cid, 22, "Sua experiencia esta de volta ao normal.")

doPlayerSetExperienceRate(cid, 1.0)

return TRUE

end