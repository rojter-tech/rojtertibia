local tabela = {
    [30] = {item_id = 2160, quantidade = 5, mensagem = "You have been awarded with 5 crystal coin for reaching level 30",1},
    [50] = {item_id = 2160, quantidade = 6, mensagem = "You have been awarded with 6 crystal coin for reaching level 50!",2},
    [75] = {item_id = 2160, quantidade = 8, mensagem = "You have been awarded with 8 crystal coin for reaching level 75!",3},
    [100] = {item_id = 2160, quantidade = 20, mensagem = "You have been awarded with 20 crystal coin for reaching level 100!",4}
}
 
local storage = 15000

function onAdvance(cid, skill, oldlevel, newlevel)
    
	local player = Player(cid)
	
    if skill == 8 then
        for level, _ in pairs(tabela) do
            if player:getLevel() >= level and player:getStorageValue(storage) < level then
                player:addItem(tabela[level].item_id, tabela[level].quantidade)
                player:sendTextMessage(MESSAGE_EVENT_ADVANCE, tabela[level].mensagem)
                player:setStorageValue(storage, level)
            end
        end
    end
   
    player:save()    
    return true
end