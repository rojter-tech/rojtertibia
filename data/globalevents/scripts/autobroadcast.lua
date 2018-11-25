local messages = {
	"Por favor, reporte bugs e criaturas faltando/npcs/quests no forum de nosso servidor com imagens e descrição.",
	"Siga as regras do servidor para evitar um banimento.",
	"Vire um guerreiro, transforme sua vocação, aumente sua experiencia, obtenha items novos, e ajude o servidor permanecer online.",
	"Você tem a possibilidade de doar com cartão de crédito, depósito, transferencias bancárias ou através de boleto bancario no website RivalWar",
	"Visite o forum oficial diariamente para ter uma visão geral das últimas notícias.",
	"A equipe do servidor não faz quests nem wars, então se você quer um OT cheio de wars ajude-nos a divulgar para fazer diversas wars.",
	"Não nos responsabilizamos por items/senhas perdidos, para evitar isso não de sua senha para ninguem e tenha sua Recovery Key anotada em segurança!!",
	"Convide seus amigos para jogar, fazer uma guild, ganhar dinheiro, encontrar itens raros e se tornar uma lenda no RivalWar.",
	"Aproveite o servidor por inteiro fazendo uma doação e adquirindo todas as vantagens que o mesmo lhe ofereçe",
	"Fique sabendo os horarios dos eventos acessando o site RivalWar. Os eventos podem acontecer tambem quando algum GameMaster inicia-lo!"
}

local i = 0
function onThink(interval, lastExecution)
local message = messages[(i % #messages) + 1]
    doBroadcastMessage("News: " .. message .. "", MESSAGE_STATUS_CONSOLE_ORANGE)
    i = i + 1
    return TRUE
end