local config = {
    semana_mes = "semana",
    days = {1,3,6},
	tempo = 600,
	p = {{x=601,y=40,z=7},
		{x=601,y=41,z=7},
		{x=601,y=42,z=7},
		{x=601,y=43,z=7},
		{x=601,y=44,z=7},
		{x=685,y=40,z=7},
		{x=685,y=41,z=7},
		{x=685,y=42,z=7},
		{x=685,y=43,z=7},
		{x=685,y=44,z=7}
	},
	idpedra=1304,
	p2 = {{x=613,y=40,z=7},
		{x=613,y=41,z=7},
		{x=613,y=42,z=7},
		{x=613,y=43,z=7},
		{x=613,y=44,z=7},
		{x=625,y=40,z=7},
		{x=625,y=41,z=7},
		{x=625,y=42,z=7},
		{x=625,y=43,z=7},
		{x=625,y=44,z=7},
		{x=638,y=43,z=7},
		{x=640,y=42,z=7},
		{x=648,y=40,z=7},
		{x=646,y=42,z=7}
	},
	idpedra2=1353,
	p3 = {{x=661,y=40,z=7},
		 {x=661,y=41,z=7},
		 {x=661,y=42,z=7},
	      {x=661,y=43,z=7},
	      {x=661,y=44,z=7},
           {x=673,y=40,z=7},
		{x=673,y=41,z=7},
		{x=673,y=42,z=7},
		{x=673,y=43,z=7},
		{x=673,y=44,z=7}
	},
	idpedra3=1354,
	m={{"Gerador Azul I",{x=607,y=42,z=7}},
		{"Gerador Vermelho I",{x=679,y=42,z=7}}
		},
	nkpos = {{x=1,y=1,z=7},
		{x=1,y=1,z=7},
		{x=1,y=1,z=7},
		{x=1,y=1,z=7},
		{x=1,y=1,z=7},
		{x=1,y=1,z=7}

}} --em segundos

function onTime()
    local time = os.date("*t")
    if (config.semana_mes == "semana" and isInArray(config.days,time.wday)) or (config.semana_mes == "mes" and isInArray(config.daystime.day)) or config.semana_mes == "" then
	for _,k in pairs(config.nkpos) do
		if isMonster(getTopCreature(k).uid) then
			doRemoveCreature(getTopCreature(k).uid)
		end
	end
	for _,k in pairs(config.p) do
		 doRemoveItem(getTileItemById(k,config.idpedra).uid,1)
	end
	for _,k in pairs(config.p2) do
		doRemoveItem(getTileItemById(k,config.idpedra2).uid,1)
	end
	for _,k in pairs(config.p3) do
		doRemoveItem(getTileItemById(k,config.idpedra3).uid,1)
	end

	for _,k in pairs(config.p) do
		doCreateItem(config.idpedra,k)
	end
	for _,k in pairs(config.p2) do
		doCreateItem(config.idpedra2,k)
	end
	for _,k in pairs(config.p3) do
		doCreateItem(config.idpedra3,k)
	end
	for _,o in pairs(config.m) do
		doSummonCreature(o[1],o[2])
	end
	    local mensage1 = "[Evento Dota] Liberada Sala dos Times! Quem quiser Participar, vá para a sala de times até o Evento começar. Depois que começar, sÓ na outra rodada! Gogo (TELEPORTE PARA O DOTA NO TEMPLO DA CIDADE PRINCIPAL)" -- Mensagem Inicial
		gatepos = {x=677, y=14, z=7, stackpos=1} -- Posição da Pedra
		getgate = getThingfromPos(gatepos)
		if getgate.itemid == 1304 then
			broadcastMessage(mensage1, MESSAGE_EVENT_ADVANCE)
			doRemoveItem(getgate.uid,1)
		end
		addEvent(startDota,config.tempo*1000,nil)
    end
    return true
end

function startDota()
	local mensage1 = "[Evento Dota] Evento Iniciado! Destruam as Torres! quem destruir as 3 Torres primeiro, Ganha!" -- Mensagem Inicial
	local monster1 = "Gerador Azul I" -- Geradores Iniciais
	local monster2 = "Gerador Vermelho I" -- Geradores Iniciais

	gatepos = {x=685, y=42, z=7, stackpos=1} -- Posição da Pedras 1
	getgate = getThingfromPos(gatepos)

	gatepos11 = {x=685, y=41, z=7, stackpos=1} -- Posição da Pedras 11
	getgate11 = getThingfromPos(gatepos11)

	gatepos12 = {x=685, y=40, z=7, stackpos=1} -- Posição da Pedras 12
	getgate12 = getThingfromPos(gatepos12)

	gatepos13 = {x=685, y=44, z=7, stackpos=1} -- Posição da Pedras 13
	getgate13 = getThingfromPos(gatepos13)

	gatepos14 = {x=685, y=43, z=7, stackpos=1} -- Posição da Pedras 14
	getgate14 = getThingfromPos(gatepos14)


	gatepos2 = {x=601, y=42, z=7, stackpos=1} -- Posição da Pedra 2
	getgate2 = getThingfromPos(gatepos2)

	gatepos21 = {x=601, y=41, z=7, stackpos=1} -- Posição da Pedra 21
	getgate21 = getThingfromPos(gatepos21)

	gatepos22 = {x=601, y=40, z=7, stackpos=1} -- Posição da Pedra 22
	getgate22 = getThingfromPos(gatepos22)

	gatepos23 = {x=601, y=43, z=7, stackpos=1} -- Posição da Pedra 23
	getgate23 = getThingfromPos(gatepos23)

	gatepos24 = {x=601, y=44, z=7, stackpos=1} -- Posição da Pedra 24
	getgate24 = getThingfromPos(gatepos24)

	if getgate.itemid == 1304 and getgate2.itemid == 1304 then
		broadcastMessage(mensage1, MESSAGE_EVENT_ADVANCE)

		doRemoveItem(getgate.uid,1)
		doRemoveItem(getgate11.uid,1)
		doRemoveItem(getgate12.uid,1)
		doRemoveItem(getgate13.uid,1)
		doRemoveItem(getgate14.uid,1)
		doRemoveItem(getgate2.uid,1)
		doRemoveItem(getgate21.uid,1)
		doRemoveItem(getgate22.uid,1)
		doRemoveItem(getgate23.uid,1)
		doRemoveItem(getgate24.uid,1)
		doCreateItem(1304, {x=677, y=14, z=7})
	end
end