function executeClean()
        doCleanMap()
        return true
end
function onThink(interval, lastExecution, thinkInterval)
        addEvent(executeClean, 30000)
        return true
end
