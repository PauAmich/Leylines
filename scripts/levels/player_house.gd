extends TileMap
@export var player: PackedScene

# Called when the node enters the scene tree for the first time.
func _ready():
	var p = player.instantiate()
	match General.last_scene:
		"main_menu":
			p.position = Vector2(200,100)
			spawn_wizard()
		"town_featherdown":
			p.position = Vector2(200,210)
	add_child(p)
	General.last_scene = "player_house"
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_door_entered(body):
	if body.name == "MainCharacter":
		get_tree().change_scene_to_file("scenes/lancaster/featherdown/town_featherdown.tscn");
	pass # Replace with function body.


func spawn_wizard():
	var w = preload("res://characters/wizard.tscn").instantiate();
	w.position = Vector2(200,210);
	add_child(w)
	
