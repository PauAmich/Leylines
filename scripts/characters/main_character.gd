extends AnimatedCharacter
class_name MainCharacter

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	var direction = Input.get_vector("Left","Right","Up","Down").normalized();
	move_character(direction,speed,delta);
	animate_character(direction)
	pass
