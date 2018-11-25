local config = {
    positions = {
        ["Offline"] = { x = 32365, y = 32238, z = 7}
    }
}

function onThink(cid, interval, lastExecution)
    for text, pos in pairs(config.positions) do
        doSendAnimatedText(pos, text, math.random(1, 255))
    end
    
    return TRUE
end   