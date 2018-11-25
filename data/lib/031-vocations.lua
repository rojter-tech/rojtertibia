function isSorcerer(cid)
return isInArray({1, 5,13}, getPlayerVocation(cid))
end

function isDruid(cid)
return isInArray({2, 6,14}, getPlayerVocation(cid))
end

function isPaladin(cid)
return isInArray({3, 7,15}, getPlayerVocation(cid))
end

function isKnight(cid)
return isInArray({4, 8,16}, getPlayerVocation(cid))
end

function isRookie(cid)
return isInArray({0}, getPlayerVocation(cid))
end 