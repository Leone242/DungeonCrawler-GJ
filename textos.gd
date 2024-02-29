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


func _ready():
	print(inicio["aviso"],inicio["f_gnomo1"])
