extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _on_start_button_pressed():
	get_tree().change_scene_to_file("res://Scenes/Levels/Lancaster/featherdown.tscn")
	pass

func _on_debug_button_pressed():
	get_tree().change_scene_to_file("res://Scenes/Levels/Gnomium/gnomium.tscn")
	pass
	

func _on_load_button_pressed():
	pass
	
	
func _on_credits_button_pressed():
	pass
	
	
func _on_quit_button_pressed():
	get_tree().quit()
	pass
	
	
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
