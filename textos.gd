extends Node

var inicio = {
	 "aviso" = "Você acaba de ser selecionado\ncomo voluntário para o sacrifício.\nBoa sorte, gnomozinho.\n",
	"f_gnomo1" = "...Mas eu NUNCA CONCORDEI COM ISSO!!!\n",
	"f_gnomo2" = "TUDO DE PIOR PRA TUDO!\n",
	"f_gnomo3" = "Cara, como eu vou sair daqui?\n",
	"f_gnomo4" = "Tudo é muito pesado \ne eu não tenho força pra um soco.\n",
	"f_gnomo5" = "Como eu vou sair daqui...\n"
}

var troll = {
	"f_troll1" = "Troll:  hehehe e pensar que os gnomos eram companheiros...\n",
	"f_troll2" = "Hey, já que você vai ser mais um \npedaço de carne a ser rasgado por aqui...\n",
	"f_troll3" = "acho que vou te seguir por enquanto,\nvai que eu veja algo interresante... \ncomo vôlei.\n",
	"f_gnomo" = "Gnomo: ...Vôlei?\n",
	"f_troll4" = "Troll:  Sim, só que com gnomos como bolas hehehe...\n"
}

var caramunhao = {
	"demonio_a" = "Demonio: Um gnomo! \nFaz tempo que não tenho carne magra.\n",
	"demonio_b" = "Demonio: Você acha que uma pedra vai fazer alguma diferença? \nVOCÊ ACHA ERRADO, PETISCO.\n",
	"demonio_c" = "Demonio: CHURRASQUINHO DE GNOMO POR CONTA DA CASA, \nCOM CERVEJA DE ANÃO!\n",
	"acao_a" = "Você olha para a pancinha se formando no demônio e comenta \n'tá de quantos meses?'\n",
	"demonio_d" = "Demonio: ...CALA A BOCA SEU PEDAÇO DE CARNE, \nTÁ VENDO ESSES BRAÇOS? \n...se bem que você não enxerga até essa altura, já que é o anão do anão hehe.\n",
	"troll" = "Troll: ...POOOOW! O ANÃO²\n",
	"demonio_e" = "Demonio: GRRR tá com pouca criatividade seu MERDA, \nEU SEI COMO ESTÁ, \nEU OLHO NO ESPELHO!\n",
	"acao_b" = " Você olha pras pernas finas do demônio \n...'tá um picolé filezinho hein, \nsó as pernas de saracura essas coxinhas.'\n",
	"demonio_f" = "Demonio: GRRRR CALA A BOCA E PARA DE FALAR DO MEU FÍSICO!\n",
	"gnomo" = "Porque carne gorda você já vê todo dia \nassim que acorda.\n"
	
}

var efeitos = {
	"raiva" = "O demônio já está com tanta raiva \nque não ouve você zoando ele.\n",
	"dano_raiva" = "50 de dano. \nO Caramunhão se feriu ao errar um golpe, \nsocando a parede.\n",
	"raiva_confuso" = "Mesmo enraivecido, ele tenta compreender o que você fala.",
	"dano_confuso" = "80 de dano. \nO demônio tenta dar um cruzado de direita, \nmas está tão confuso que acaba acertando a própria cara.\n",
	"trocadilho" = "Você faz um trocadilho sobre cascos de bode.",
	"resposta_demonio" = "Demonio: Sério que você tá falando disso? \nJá bastou os Druidas estranhos na semana passada.\n",
	"chifre" = "Você comenta sobre o formato dos chifres \ne fala sobre como são muuuuuuuuuuuuuuito bonitos.\n",
	"força" = "-1 de força.\n",
	"desinteresse" = "O demônio não parece interessado \nem saber de piadas sem graça por enquanto.\n",
	"vitória" = "Vitória por trocadilho ruim.\n",
	"fim" = "Demonio: Quer saber? \nPega essa merda e sai daqui, \nperdi o apetite depois dessas.\n",
	"chave" = "O deônio deixa cair uma chave.\n"
}



#Encontro com Gramunhão
#Demonio: Um gnomo! Faz tempo que não tenho carne magra.
#Tacar pedra → 0-1 dano
#Demonio: Você acha que uma pedra vai fazer alguma diferença? VOCÊ ACHA ERRADO, PETISCO.
#Demonio: CHURRASQUINHO DE GNOMO POR CONTA DA CASA, COM CERVEJA DE ANÃO
#ZOAR → +1 de raiva -1 de precisão
#Você olha para a pancinha se formando no demônio e comenta "tá de quantos meses?"
#Demonio: ...CALA A BOCA SEU PEDAÇO DE CARNE, TÁ VENDO ESSES BRAÇOS? 
#...se bem que você não enxerga até essa altura, já que é o anão do anão hehe
#Troll: ...POOOOW! O ANÃO²
#-1 hp pois isso foi um corte rápido.
#ZOAR → +1 de raiva -1 de precisão
#Demonio: GRRR tá com pouca criatividade seu MERDA, EU SEI COMO ESTÁ, EU OLHO NO ESPELHO!
#ZOAR → +1 de raiva -1 de precisão
#Demonio: Você olha pras pernas finas do demônio ..."tá um picolé filezinho hein, 
#só as pernas de saracura essas coxinhas"
#Demonio: GRRRR CALA A BOCA E PARA DE FALAR DO MEU FÍSICO!
#
#

#O demônio já está com tanta raiva que não ouve você zoando ele.
#-50 de dano, pois ele acertou uma parede ao seu lado na raiva e machucou a mão
#
#O demônio já esá com tanta raiva, mas mesmo assim tenta compreender o que você fala
#-80 de dano, pois enquanto pensava tentou dar um soco girando e acabou se batendo
#
#TROCADILHO → -1 força
#De forma imediata você fala para o demonio "porque carne gorda você já vê todo dia assim 
#que acorda"
#Demonio: Que original...
#TROCADILHO → -1 força
#Você faz um trocadilho sobre cascos de bode.
#Demonio: Sério que você tá falando disso? Já bastou os Druidas estranhos na semana passada.
#TROCADILHO → -1 força
#Você comenta sobre o formato dos chifres e fala sobre como é muuuuuuuuuuuuuuito bonito.
#Demonio: ...........
#
#TROCADILHO → -1 força
#O demônio não parece interessado em saber de piadas sem graça por enquanto.
#Demonio não ataca
#
#Vítoria por trocadilho ruim → 
#Demonio: Quer saber? Pega essa merda e sai daqui, perdi o apetite depois dessas.
##












func _ready():
	print(inicio["aviso"],inicio["f_gnomo1"])
