extends TileMap
@export var player: PackedScene

# Called when the node enters the scene tree for the first time.
func _ready():
	var p = player.instantiate()
	match General.last_scene:
		"overworld_east":
			p.position = Vector2(2900,1000)
		"featherdown":
			p.position = Vector2(1300,3450);
		_:
			p.position = Vector2(200,400)
	add_child(p)
	General.last_scene = "overworld_center"
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
