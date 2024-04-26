extends TileMap
@export var player: PackedScene

# Called when the node enters the scene tree for the first time.
func _ready():
	var p = player.instantiate()
	match General.last_scene:
		"player_house":
			p.position = Vector2(837,755)
			
		"overworld_east":
			p.position = Vector2(1250,800);			
		_:
			p.position = Vector2(200,400)
	add_child(p)
	General.last_scene = "featherdown"
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_door_entered(body):
	print(body.name)
	if body.name == "MainCharacter":
		get_tree().change_scene_to_file("scenes/lancaster/featherdown/town_featherdown.tscn");
	pass # Replace with function body.


func _on_west_gate_entered(body):
	if body.name == "MainCharacter":
		get_tree().change_scene_to_file("res://scenes/lancaster/overworld/overworld_central.tscn");	
	pass # Replace with function body.

func _on_east_gate_entered(body):
	if body.name == "MainCharacter":
		get_tree().change_scene_to_file("res://scenes/lancaster/overworld/overworld_east.tscn");	
	pass # Replace with function body.


func _on_player_house_door_entered(body):
	if body.name == "MainCharacter":
		get_tree().change_scene_to_file("scenes/lancaster/featherdown/player_house.tscn");	
	pass # Replace with function body.
