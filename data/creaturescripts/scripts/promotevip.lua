function onLogin(cid)
	if vip.hasVip(cid) == TRUE then
		if getPlayerPromotionLevel(cid) < 2 then
			doPlayerSetPromotionLevel(cid, 2) --new vocations that you created
		end	
	elseif vip.hasVip(cid) == FALSE and vip.getVip(cid) == 0 then
		if getPlayerPromotionLevel(cid) == 2 then
			doPlayerSetPromotionLevel(cid, 0) --no promote
		end
	end
	return TRUE
end