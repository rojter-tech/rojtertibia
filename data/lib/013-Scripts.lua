--------------------------------------------------------------Funções----------------------------------------------------------------------------------
local outGain = {
	[1] = 69, --Goku
	[2] = 62, --Gohan
	[3] = 250, --Goten
	[4] = 73, --Vegeta
	[5] = 158,--Trunks
	[6] = 137,--Chibi Trunks
	[7] = 227,--Freeza
	[8] = 52,--Cell
	[9] = 85,--Buu
	[10] = 572,--C17
	[11] = 69,--C18
	[12] = 69,--Piccolo
	[13] = 137,--Tsufur
	[14] = 84,--Brolly
	[15] = 69,--Cooler
	[16] = 273,--Dende
	[17] = 561,--Uub
	[18] = 60,--Bardock
	[19] = 356,--Kuririn
	[20] = 137,--Pan
	[21] = 69,--Supreme Senhor Kaio
	[22] = 69,--Videl
	[23] = 198,--Sheron
	[24] = 421,--Vegetto
	[25] = 280,--Janemba
	[26] = 498,--Jenk
	[27] = 69,--TEsnshin
	[28] = 69,--Raditz
	[29] = 405,--Kame
	[30] = 455,--Tapion
	[31] = 69,--Turles
	[32] = 69,--C16
	[33] = 466,--King Vegeta
	[34] = 509,--Kagome
	[35] = 476,--Bulma
	[36] = 137,--Goku RB
	[37] = 148,--Gohan RB
	[38] = 144,--Goten RB
	[39] = 152,--VEgeta RB
	[40] = 150,--Trunks RB
	[41] = 69,--Chibi Trunks RB
	[42] = 103,--Freeza RB
	[43] = 118,--Cell RB
	[44] = 34,--Buu RB
	[45] = 577,--C17 RB
	[46] = 137,--C18 RB
	[47] = 69,--Picolo RB
	[48] = 69,--Tsuful RB
	[49] = 184,--Brolly RB
	[50] = 137,--Coller RB
	[51] = 221,--Dende RB
	[52] = 566,--Uub RB
	[53] = 60,--Bardock RB
	[54] = 361,--Kuririn RB
	[55] = 69,--Pan RB
	[56] = 137,--Supreme Senhor RB
	[57] = 69,--Videl RB
	[58] = 433,--Sheron RB
	[59] = 426,--Vegetto RB
	[60] = 451,--Kanemba RB
	[61] = 503,--Jenk RB
	[62] = 69,--Tesnshin RB
	[63] = 137,--Raditz RB
	[64] = 410,--Kame RB
	[65] = 460,--Tapion RB
	[66] = 137,--Turles RB
	[67] = 69,--C16 Rb
	[68] = 471,--King RB
	[69] = 513,--Kagome RB
	[70] = 480,--Bulma RB
	[71] = 393,--Zaiko
	[72] = 398,--Zaiko RB
	[73] = 137,--Goku RB
	[74] = 69,--Goha RB
	[75] = 144,--Goten RB
	[76] = 152,--VEgeta RB
	[77] = 150,--Trunks RB
	[78] = 69,--Chibi Trunks RB
	[79] = 103,--Freeza RB
	[80] = 118,--Cell RB
	[81] = 34,--Buu RB
	[82] = 577,--C17 RB
	[83] = 137,--C18 RB
	[84] = 69,--Picolo RB
	[85] = 69,--Tsuful RB
	[86] = 184,--Brolly RB
	[87] = 137,--Coller RB
	[88] = 221,--Dende RB
	[89] = 566,--Uub RB
	[90] = 536,--Bardock RB
	[91] = 361,--Kuririn RB
	[92] = 69,--Pan RB
	[93] = 137,--Supreme Senhor RB
	[94] = 69,--Videl RB
	[95] = 559,--Sheron RB
	[96] = 426,--Vegetto RB
	[97] = 451,--Kanemba RB
	[98] = 503,--Jenk RB
	[99] = 69,--Tesnshin RB
	[100] = 137,--Raditz RB
	[101] = 410,--Kame RB
	[102] = 460,--Tapion RB
	[103] = 137,--Turles RB
	[104] = 69,--C16 Rb
	[105] = 471,--King RB
	[106] = 513,--Kagome RB
	[107] = 137,--Bulma RB
	[108] = 551,--Zaiko
	[109] = 398,--Zaiko RB
	[115] = 82, --Gohan Click
	
}

function ZeraOutfit(cid)
	local outfit = getCreatureOutfit(cid)
	outfit.lookType = outGain[getPlayerVocation(cid)]
	doSetCreatureOutfit(cid, outfit, -1)
return true
end

--------------------------------------------------------------Funções----------------------------------------------------------------------------------

function ZeraStorages(cid)
		setPlayerStorageValue(cid, 9658, 0)
		setPlayerStorageValue(cid, 9660, 0)
		setPlayerStorageValue(cid, 454324, 0)
		setPlayerStorageValue(cid, 56982, 0)
		return true
		end
		
--------------------------------------------------------------Funções----------------------------------------------------------------------------------		
	
function MoverPlayer(cid)
mayNotMove(cid, false)
return true
end

--------------------------------------------------------------Funções----------------------------------------------------------------------------------

local config = {
[1] = {hp = 280, mp = 250},
[2] = {hp = 280, mp = 250},
[3] = {hp = 280, mp = 250},
[4] = {hp = 280, mp = 250},
[5] = {hp = 280, mp = 250},
[6] = {hp = 280, mp = 250},
[7] = {hp = 280, mp = 250},
[8] = {hp = 280, mp = 250},
[9] = {hp = 280, mp = 250},
[10] = {hp = 280, mp = 250},
[11] = {hp = 280, mp = 250},
[12] = {hp = 280, mp = 250},
[13] = {hp = 280, mp = 250},
[14] = {hp = 280, mp = 250},
[15] = {hp = 280, mp = 250},
[16] = {hp = 280, mp = 250},
[17] = {hp = 280, mp = 250},
[18] = {hp = 280, mp = 250},
[19] = {hp = 280, mp = 250},
[20] = {hp = 280, mp = 250},
[21] = {hp = 280, mp = 250},
[22] = {hp = 280, mp = 250},
[23] = {hp = 280, mp = 250},
[24] = {hp = 280, mp = 250},
[25] = {hp = 280, mp = 250},
[26] = {hp = 280, mp = 250},
[27] = {hp = 280, mp = 250},
[28] = {hp = 280, mp = 250},
[29] = {hp = 330, mp = 280},
[30] = {hp = 330, mp = 280},
[31] = {hp = 280, mp = 250},
[32] = {hp = 280, mp = 250},
[33] = {hp = 330, mp = 280},
[34] = {hp = 330, mp = 280},
[35] = {hp = 280, mp = 250},
[36] = {hp = 280, mp = 250},
[37] = {hp = 280, mp = 250},
[38] = {hp = 280, mp = 250},
[39] = {hp = 280, mp = 250},
[40] = {hp = 280, mp = 250},
[41] = {hp = 280, mp = 250},
[42] = {hp = 280, mp = 250},
[43] = {hp = 280, mp = 250},
[44] = {hp = 280, mp = 250},
[45] = {hp = 280, mp = 250},
[46] = {hp = 280, mp = 250},
[47] = {hp = 280, mp = 250},
[48] = {hp = 280, mp = 250},
[49] = {hp = 280, mp = 250},
[50] = {hp = 280, mp = 250},
[51] = {hp = 280, mp = 250},
[52] = {hp = 280, mp = 250},
[53] = {hp = 280, mp = 250},
[54] = {hp = 280, mp = 250},
[55] = {hp = 280, mp = 250},
[56] = {hp = 280, mp = 250},
[57] = {hp = 280, mp = 250},
[58] = {hp = 280, mp = 250},
[59] = {hp = 280, mp = 250},
[60] = {hp = 280, mp = 250},
[61] = {hp = 280, mp = 250},
[62] = {hp = 280, mp = 250},
[63] = {hp = 280, mp = 250},
[64] = {hp = 330, mp = 280},
[65] = {hp = 330, mp = 280},
[66] = {hp = 280, mp = 250},
[67] = {hp = 280, mp = 250},
[68] = {hp = 330, mp = 280},
[69] = {hp = 330, mp = 280},
[70] = {hp = 280, mp = 250},
[71] = {hp = 330, mp = 280},
[72] = {hp = 330, mp = 280},
[73] = {hp = 280, mp = 250},
[74] = {hp = 280, mp = 250},
[75] = {hp = 280, mp = 250},
[76] = {hp = 280, mp = 250},
[77] = {hp = 280, mp = 250},
[78] = {hp = 280, mp = 250},
[79] = {hp = 280, mp = 250},
[80] = {hp = 280, mp = 250},
[81] = {hp = 280, mp = 250},
[82] = {hp = 280, mp = 250},
[83] = {hp = 280, mp = 250},
[84] = {hp = 280, mp = 250},
[85] = {hp = 280, mp = 250},
[86] = {hp = 280, mp = 250},
[87] = {hp = 280, mp = 250},
[88] = {hp = 280, mp = 250},
[89] = {hp = 280, mp = 250},
[90] = {hp = 280, mp = 250},
[91] = {hp = 280, mp = 250},
[92] = {hp = 280, mp = 250},
[93] = {hp = 280, mp = 250},
[94] = {hp = 280, mp = 250},
[95] = {hp = 280, mp = 250},
[96] = {hp = 280, mp = 250},
[97] = {hp = 280, mp = 250},
[98] = {hp = 280, mp = 250},
[99] = {hp = 280, mp = 250},
[100] = {hp = 280, mp = 250},
[101] = {hp = 280, mp = 250},
[102] = {hp = 280, mp = 250},
[103] = {hp = 280, mp = 250},
[104] = {hp = 280, mp = 250},
[105] = {hp = 280, mp = 250},
[106] = {hp = 280, mp = 250},
[107] = {hp = 280, mp = 250},
[108] = {hp = 280, mp = 250},
[109] = {hp = 280, mp = 250},
[110] = {hp = 280, mp = 250},
[111] = {hp = 280, mp = 250},
[112] = {hp = 280, mp = 250},
[113] = {hp = 280, mp = 250},
[114] = {hp = 280, mp = 250},
[115] = {hp = 280, mp = 250},
[116] = {hp = 280, mp = 250},
[117] = {hp = 280, mp = 250},
[118] = {hp = 280, mp = 250},
[119] = {hp = 280, mp = 250},
[120] = {hp = 280, mp = 250},
}
function ArrumarHP(cid)
hp = getPlayerLevel(cid) + getPlayerStorageValue(cid, 5050)
local voc = config[getPlayerVocation(cid)]
    if (getPlayerLevel(cid) >= 8) then
		setCreatureMaxHealth(cid, hp*voc.hp)
        setCreatureMaxMana(cid, hp*voc.mp)
    end
return true
end

function RegistrarIP(cid, item)
if isPlayer(cid) or isCreature(cid) then
f = io.open("data/logs/IP/IpNumero/"..doConvertIntegerToIp(getPlayerIp(cid))..".txt", "a+")
f:write("Player : "..getCreatureName(cid).." - " .. os.date("%d %B %Y - %X.", os.time()) .."\n----------------------------------------------------------\n")
f:close()
end
if isPlayer(cid) or isCreature(cid) then
f = io.open("data/logs/IP/IpName/"..getCreatureName(cid)..".txt", "a+")
f:write("Player : "..doConvertIntegerToIp(getPlayerIp(cid)).." - " .. os.date("%d %B %Y - %X.", os.time()) .."\n----------------------------------------------------------\n")
f:close()
end
    local supreme_armor = getPlayerItemById(cid, true, 2511)
	local supreme_legs = getPlayerItemById(cid, true, 2520)
	local supreme_boots = getPlayerItemById(cid, true, 2532)
	local cell_helmet = getPlayerItemById(cid, true, 3972)
	local supreme_bracelet = getPlayerItemById(cid, true, 2534)
    
    if getPlayerSlotItem(cid, CONST_SLOT_ARMOR).itemid == 2511 then
        if getItemAttribute(supreme_armor.uid, "description") then
			f = io.open("data/logs/Items/Armor/"..getItemAttribute(supreme_armor.uid, "description")..".txt", "a+")
			f:write("Player : "..getItemAttribute(supreme_armor.uid, "description").." - "..getCreatureName(cid).." - "..getPlayerAccount(cid).." - " .. os.date("%d %B %Y - %X.", os.time()) .."\n----------------------------------------------------------\n")
			f:close()
		elseif getItemInfo(supreme_armor.itemid).description ~= "" then
			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Item Foi Removido por nao ser um item comprado no SHOP e ADM Foi Notificado!")
			doRemoveItem(supreme_armor.uid, 1)
			f = io.open("data/logs/Items/Supreme_Armor_Sem.txt", "a+")
			f:write("Player : "..(getItemInfo(supreme_armor.itemid).description).." - "..getCreatureName(cid).." - "..getPlayerAccount(cid).." - " .. os.date("%d %B %Y - %X.", os.time()) .."\n----------------------------------------------------------\n")
			f:close()
        end
  
    end
	if getPlayerSlotItem(cid, CONST_SLOT_LEGS).itemid == 2520 then
        if getItemAttribute(supreme_legs.uid, "description") then
			f = io.open("data/logs/Items/Legs/"..getItemAttribute(supreme_legs.uid, "description")..".txt", "a+")
			f:write("Player : "..getItemAttribute(supreme_legs.uid, "description").." - "..getCreatureName(cid).." - "..getPlayerAccount(cid).." - " .. os.date("%d %B %Y - %X.", os.time()) .."\n----------------------------------------------------------\n")
			f:close()
		elseif getItemInfo(supreme_legs.itemid).description ~= "" then
			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Item Foi Removido por nao ser um item comprado no SHOP e ADM Foi Notificado!")
			doRemoveItem(supreme_legs.uid, 1)
			f = io.open("data/logs/Items/Supreme_Legs_Sem.txt", "a+")
			f:write("Player : "..(getItemInfo(supreme_legs.itemid).description).." - "..getCreatureName(cid).." - "..getPlayerAccount(cid).." - " .. os.date("%d %B %Y - %X.", os.time()) .."\n----------------------------------------------------------\n")
			f:close()
        end
        end

	if getPlayerSlotItem(cid, CONST_SLOT_FEET).itemid == 2532 then
        if getItemAttribute(supreme_boots.uid, "description") then
			f = io.open("data/logs/Items/Boots/"..getItemAttribute(supreme_boots.uid, "description")..".txt", "a+")
			f:write("Player : "..getItemAttribute(supreme_boots.uid, "description").." - "..getCreatureName(cid).." - "..getPlayerAccount(cid).." - " .. os.date("%d %B %Y - %X.", os.time()) .."\n----------------------------------------------------------\n")
			f:close()
		elseif getItemInfo(supreme_boots.itemid).description ~= "" then
			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Item Foi Removido por nao ser um item comprado no SHOP e ADM Foi Notificado!")
			doRemoveItem(supreme_boots.uid, 1)
			f = io.open("data/logs/Items/Supreme_Boots_Sem.txt", "a+")
			f:write("Player : "..(getItemInfo(supreme_boots.itemid).description).." - "..getCreatureName(cid).." - "..getPlayerAccount(cid).." - " .. os.date("%d %B %Y - %X.", os.time()) .."\n----------------------------------------------------------\n")
			f:close()
        end
        end
		
	if getPlayerSlotItem(cid, CONST_SLOT_HEAD).itemid == 3972 then
        if getItemAttribute(cell_helmet.uid, "description") then
			f = io.open("data/logs/Items/Helmet/"..getItemAttribute(cell_helmet.uid, "description")..".txt", "a+")
			f:write("Player : "..getItemAttribute(cell_helmet.uid, "description").." - "..getCreatureName(cid).." - "..getPlayerAccount(cid).." - " .. os.date("%d %B %Y - %X.", os.time()) .."\n----------------------------------------------------------\n")
			f:close()
		elseif getItemInfo(cell_helmet.itemid).description ~= "" then
			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Item Foi Removido por nao ser um item comprado no SHOP e ADM Foi Notificado!")
			doRemoveItem(cell_helmet.uid, 1)
			f = io.open("data/logs/Items/Cell_Helmet_Sem.txt", "a+")
			f:write("Player : "..(getItemInfo(cell_helmet.itemid).description).." - "..getCreatureName(cid).." - "..getPlayerAccount(cid).." - " .. os.date("%d %B %Y - %X.", os.time()) .."\n----------------------------------------------------------\n")
			f:close()
        end
        end
  
	if getPlayerSlotItem(cid, CONST_SLOT_RIGHT).itemid == 2534 or getPlayerSlotItem(cid, CONST_SLOT_LEFT).itemid == 2534 then
        if getItemAttribute(supreme_bracelet.uid, "description") then
			f = io.open("data/logs/Items/Bracelet//"..getItemAttribute(supreme_bracelet.uid, "description")..".txt", "a+")
			f:write("Player : "..getItemAttribute(supreme_bracelet.uid, "description").." - "..getCreatureName(cid).." - "..getPlayerAccount(cid).." - " .. os.date("%d %B %Y - %X.", os.time()) .."\n----------------------------------------------------------\n")
			f:close()
		elseif getItemInfo(supreme_bracelet.itemid).description ~= "" then
			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Item Foi Removido por nao ser um item comprado no SHOP e ADM Foi Notificado!")
			doRemoveItem(supreme_bracelet.uid, 1)
			f = io.open("data/logs/Items/Supreme_Bracelet_Sem.txt", "a+")
			f:write("Player : "..(getItemInfo(supreme_bracelet.itemid).description).." - "..getCreatureName(cid).." - "..getPlayerAccount(cid).." - " .. os.date("%d %B %Y - %X.", os.time()) .."\n----------------------------------------------------------\n")
			f:close()
        end
        end
   
return true
end