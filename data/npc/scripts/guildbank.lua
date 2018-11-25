local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
local talkState = {}

function onCreatureAppear(cid)				npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid)			npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)			npcHandler:onCreatureSay(cid, type, msg)		end
function onThink()					npcHandler:onThink()					end

function writeBankFile(guildname, name, amount, operation)
	local file = io.open("guild_bank/" .. guildname .. ".txt", "a+")
	if file then
		file:write(name .. " - " .. operation .. " - " .. amount .. " - " .. os.date("%c") .. "\n")
		file:close()
		return true
	end
	return false
end

function testGuildFile(guildname)
	local file = io.open("guild_bank/" .. guildname .. ".txt", "r")
	if file then
		file:close()
		return true
	end
	return false
end

function getBankLog(guildname)
	local file = io.open("guild_bank/" .. guildname .. ".txt", "r")
	local content = file:read("*a")
	file:close()
	return content
end

function creatureSayCallback(cid, typ, msg)
	if(not npcHandler:isFocused(cid)) then
		return false
	end

	local talkUser = NPCHANDLER_CONVBEHAVIOR == CONVERSATION_DEFAULT and 0 or cid

	local STG_ACCOUNT = 950
	local STG_WITHDRAW_PERMISSION = 951
	local STG_DEPOSIT_PERMISSION = 952
	
	local guild_rank = getPlayerGuildLevel(cid)	
	local guild = getPlayerGuildId(cid)
	if msgcontains(msg, "guild bank") then
		if not hasGuild(cid) then
			selfSay("This is the Guild Bank, " .. getCreatureName(cid) .. ". You need a guild to open an account here.", cid)
		elseif getGuildStorageValue(guild, STG_ACCOUNT) == 1 then
			selfSay("I see here that your guild already has an account. Would you like to {manage} it?", cid)
			talkState[talkUser] = 1
		elseif guild_rank >= 3 then
			selfSay("Your guild doesn't have an account yet. Would you like to {create} one?", cid)
			talkState[talkUser] = 2
		else
			selfSay("I'm sorry, your guild doesn't have an account with us yet. Please, tell your leader to come and create one here.", cid)
		end
	elseif msgcontains(msg, "manage") and talkState[talkUser] == 1 then
		local str = guild_rank < 3 and "Ok, then. You can check the {balance}, {withdraw} or {deposit}." or "Ok, then. You can check the {balance}, the transaction {list}, {withdraw}, {deposit} or manage account's {permissions}."
		selfSay(str, cid)
		talkState[talkUser] = 3
	elseif msgcontains(msg, "create") and talkState[talkUser] == 2 then
		selfSay("In order to create your account, we need to set some permissions. There are 3 permission levels: 1 - members, 2 - vice-leaders, 3 - leaders. To withdraw money from the guild account, which permission do you want to set?", cid)
		talkState[talkUser] = 4
	elseif talkState[talkUser] == 4 then
		local permission, permissions = tonumber(msg), {1, 2, 3}
		if isInArray(permissions, permission) then
			setGuildStorageValue(guild, STG_WITHDRAW_PERMISSION, permission)
			selfSay("Ok. Withdraw permission is set. Now, to deposit money into your guild's account, which permission do you want to set?", cid)
			talkState[talkUser] = 5
		else
			selfSay("That wasn't a valid permission. There are 3 permission levels: 1 - members, 2 - vice-leaders, 3 - leaders.", cid)
		end
	elseif talkState[talkUser] == 5 then
		local permission, permissions = tonumber(msg), {1, 2, 3}
		if isInArray(permissions, permission) then
			setGuildStorageValue(guild, STG_DEPOSIT_PERMISSION, permission)
			setGuildStorageValue(guild, STG_ACCOUNT, 1)
			selfSay("Ok. Deposit permission is set and your guild account has been successfully created. Would you like to make a {deposit}?", cid)
			talkState[talkUser] = 3
		else
			selfSay("That wasn't a valid permission. There are 3 permission levels: 1 - members, 2 - vice-leaders, 3 - leaders.", cid)
		end
	elseif msgcontains(msg, "withdraw") and talkState[talkUser] == 3 then
		if guild_rank >= getGuildStorageValue(guild, STG_WITHDRAW_PERMISSION) then
			selfSay("How much would you like to withdraw?", cid)
			talkState[talkUser] = 6
		else
			selfSay("Sorry, but you are not allowed to withdraw money from this account. Speak to your guild leader.", cid)
		end
	elseif talkState[talkUser] == 6 then
		local withdraw_amount = tonumber(msg)
		local guild_balance = getGuildBalance(guild)
		if withdraw_amount and withdraw_amount >= 1 and guild_balance > withdraw_amount then
			withdraw_amount = math.floor(withdraw_amount)
			if doGuildAddBalance(guild, - withdraw_amount) then
				doPlayerAddMoney(cid, withdraw_amount)
				selfSay("Done. Would you like anything else?", cid)
				writeBankFile(getGuildName(guild), getCreatureName(cid), withdraw_amount, "withdraw")
				talkState[talkUser] = 3
			else
				selfSay("An error has ocurred and the transaction couldn't be completed.", cid)
				talkState[talkUser] = 3
			end
		else
			selfSay("You cannot withdraw that amount from your guild's account. Your balance is " .. guild_balance .. ".", cid)
		end
	elseif msgcontains(msg, "deposit") and talkState[talkUser] == 3 then
		if guild_rank >= getGuildStorageValue(guild, STG_WITHDRAW_PERMISSION) then
			selfSay("How much would you like to deposit?", cid)
			talkState[talkUser] = 10
		else
			selfSay("Sorry, but you are not allowed to deposit money into this account. Speak to your guild leader.", cid)
		end
	elseif talkState[talkUser] == 10 then
		local deposit_amount = tonumber(msg)
		local guild_balance = getGuildBalance(guild)
		if deposit_amount and math.floor(deposit_amount) > 0 then 
			deposit_amount = math.floor(deposit_amount)
			if doPlayerRemoveMoney(cid,deposit_amount) then
				doGuildAddBalance(guild, deposit_amount)
				writeBankFile(getGuildName(guild), getCreatureName(cid), deposit_amount, "deposit")
				selfSay("Done. Would you like anything else?", cid)
				talkState[talkUser] = 3
			else
				selfSay("I'm sorry, but you do not have that much gold.", cid)
			end
		else
			selfSay("Please, don't waste my time.", cid)
		end
	elseif msgcontains(msg, "balance") and talkState[talkUser] == 3 then
		selfSay("Account's balance is " .. getGuildBalance(guild) .. ". Is there anything else I can help you with?", cid)
		
	elseif msgcontains(msg, "permissions") and talkState[talkUser] == 3 and guild_rank >= 3 then
		selfSay("There are 3 permission levels: 1 - members, 2 - vice-leaders, 3 - leaders. To withdraw money from the guild account, which permission do you want to set?", cid)
		talkState[talkUser] = 7
	elseif talkState[talkUser] == 7 then
		local permission, permissions = tonumber(msg), {1, 2, 3}
		if isInArray(permissions, permission) then
			setGuildStorageValue(guild, STG_WITHDRAW_PERMISSION, permission)
			selfSay("Ok. Withdraw permission is set. Now, to deposit money into your guild's account, which permission do you want to set?", cid)
			talkState[talkUser] = 8
		else
			selfSay("That wasn't a valid permission. There are 3 permission levels: 1 - members, 2 - vice-leaders, 3 - leaders.", cid)
		end
	elseif talkState[talkUser] == 8 then
		local permission, permissions = tonumber(msg), {1, 2, 3}
		if isInArray(permissions, permission) then
			setGuildStorageValue(guild, STG_DEPOSIT_PERMISSION, permission)
			selfSay("Ok. Deposit permission is set. Can I help you with anything else?", cid)
			talkState[talkUser] = 3
		else
			selfSay("That wasn't a valid permission. There are 3 permission levels: 1 - members, 2 - vice-leaders, 3 - leaders.", cid)
		end
	elseif msgcontains(msg, "list") and talkState[talkUser] == 3 and guild_rank >= 3 then
		local guildName = getGuildName(guild)
		if not testGuildFile(guildName) then
			selfSay("That option is currently disabled.", cid)
		else
			local str = getBankLog(guildName)
			str = string.explode(str, "\n")
			local newStr = ""
			local tableSize = type(str) == "table" and #str or false
			if not tableSize or (tableSize and tableSize <= 1) then
				selfSay("No transactions have been registered yet. Can I help you with anything else?", cid)
			else
				for i = 0, 9 do
					local str_add = str[tableSize - 10 + i]
					if str_add then
						newStr = newStr .. str_add .. "\n"
					end
				end
				selfSay("Here you go, the last 10 transactions made in that account.", cid)
				doPlayerPopupFYI(cid, newStr)
			end
		end
	end
	return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())