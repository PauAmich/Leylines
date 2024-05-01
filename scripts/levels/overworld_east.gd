extends TileMap
@export var player: PackedScene

# Called when the node enters the scene tree for the first time.
func _ready():
	var p = player.instantiate()
	match General.last_scene:
		"town_featherdown":
			p.position = Vector2(300,2880)
		_:
			p.position = Vector2(200,400)
	add_child(p)
	General.last_scene = "overworld_east"
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_central_road_entered(body):
	if body.name == "MainCharacter":
		get_tree().change_scene_to_file("res://scenes/lancaster/overworld/overworld_central.tscn");	
	pass


func _on_featherdown_road_entered(body):
	get_tree().change_scene_to_file("res://scenes/lancaster/featherdown/town_featherdown.tscn");	
	pass # Replace with function body.
