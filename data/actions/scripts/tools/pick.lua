local items = {
	[2146] = {
		1285, 1357, 3608, 3632, 3666, 6999, 7003
	},
	[2147] = {
		1290, 1358, 3609, 3633, 3667, 7000
	},
	[2149] = {
		1335, 1359, 3615,3534, 3668, 7001
	},
	[2150] = {
		1356, 3607, 3616, 3635, 3670, 7002
	}
}
 
function onUse(cid, item, frompos, item2, topos)
	if math.random(1, 20) > 15 then
		for item, itemList in pairs(items) do
			if isInArray(itemList, item2.itemid) == TRUE then
				doSendMagicEffect(topos,34)
				doTransformItem(item2.uid,4997)
				doPlayerAddItem(cid, item, 1)
				doDecayItem(item2.uid)
				return 1
			end
		end
	else
		doSendMagicEffect(topos,2)
	end
	return 1
end
