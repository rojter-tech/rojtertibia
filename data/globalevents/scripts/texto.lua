local positions = {
   ["Items!"] = { x = 32365, y = 32232, z = 7},
   ["Premmy!"] = { x = 32321, y = 32220, z = 7},
   ["Trainer"] = { x = 32364, y = 32238, z = 7},
}

function onThink (cid, interval, lastExecution) 
    for text, pos in pairs(positions) do 
        doSendMagicEffect(pos, math.random(55,55)) 
                doSendMagicEffect(pos, math.random(56,56)) 
        doSendAnimatedText(pos, text, 57000) 
    end 
    return true 
end