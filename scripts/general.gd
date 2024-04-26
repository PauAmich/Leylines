extends Node

# Global variables and functions 
var cutscenesPlayed = {
	'first' : false,
	'second' : false
	# Si hi ha més escenes estàtiques, definir-les aquí 
}

var last_scene = "main_menu"


func startGame():
	get_tree().change_scene_to_file("scenes/lancaster/featherdown/player_house.tscn");
	
	
func loadGame():
	print("NOT IMPLEMENTED");
	quitGame();
	pass
		

func quitGame():
	get_tree().quit();
	pass
