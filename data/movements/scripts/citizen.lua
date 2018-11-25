function onStepIn(cid, item, pos)
if isPlayer(cid) == TRUE then
if (item.actionid == 4036) then
doPlayerSendTextMessage(cid,24,"Now you are citizen of Yalahar.")
doPlayerSetTown(cid,1)

elseif (item.actionid == 4037) then
doPlayerSendTextMessage(cid,24,"Now you are citizen of Carlin.")
doPlayerSetTown(cid,2)

elseif (item.actionid == 4038) then
doPlayerSendTextMessage(cid,24,"Now you are citizen of Ab'Dendriel.")
doPlayerSetTown(cid,3)

elseif (item.actionid == 4039) then
doPlayerSendTextMessage(cid,24,"Now you are citizen of Kazordoon.")
doPlayerSetTown(cid,4)

elseif (item.actionid == 4040) then
doPlayerSendTextMessage(cid,24,"Now you are citizen of Thais.")
doPlayerSetTown(cid,5)

elseif (item.actionid == 4041) then
doPlayerSendTextMessage(cid,24,"Now you are citizen of Venore.")
doPlayerSetTown(cid,6)

elseif (item.actionid == 4042) then
doPlayerSendTextMessage(cid,24,"Now you are citizen of Darashia.")
doPlayerSetTown(cid,7)

elseif (item.actionid == 4043) then
doPlayerSendTextMessage(cid,24,"Now you are citizen of Ankrahmun.")
doPlayerSetTown(cid,8)

elseif (item.actionid == 4044) then
doPlayerSendTextMessage(cid,24,"Now you are citizen of Edron.")
doPlayerSetTown(cid,9)

elseif (item.actionid == 4045) then
doPlayerSendTextMessage(cid,24,"Now you are citizen of Port Hope.")
doPlayerSetTown(cid,10)

elseif (item.actionid == 4046) then
doPlayerSendTextMessage(cid,24,"Now you are citizen of Liberty Bay.")
doPlayerSetTown(cid,12)

elseif (item.actionid == 4047) then
doPlayerSendTextMessage(cid,24,"Now you are citizen of Svargrond.")
doPlayerSetTown(cid,13)

elseif (item.actionid == 4048) then
doPlayerSendTextMessage(cid,24,"Now you are citizen of Ethno.")
doPlayerSetTown(cid,11)

elseif (item.actionid == 4049) then
doPlayerSendTextMessage(cid,24,"Now you are citizen of Gengia.")
doPlayerSetTown(cid,15)

elseif (item.actionid == 4050) then
doPlayerSendTextMessage(cid,24,"Now you are citizen of Transilvania Island.")
doPlayerSetTown(cid,16)
end
end
end