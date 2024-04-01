extends AnimatedCharacter
class_name TownGuard

# Called when the node enters the scene tree for the first time.
func _ready():
	var direction = Vector2(0,0);
	animate_character(direction);
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	pass
