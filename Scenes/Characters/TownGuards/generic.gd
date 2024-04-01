extends AnimatedCharacter
class_name TownGuard

# Called when the node enters the scene tree for the first time.
func _ready():
	var direction = Vector2(0,0);
	animate_character(direction);
	$InteractBubble.visible = false;


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	pass


func _on_interact_area_entered(body : ):

	if(body is AnimatedCharacter):
		$InteractBubble.visible = true;



func _on_interact_area_exited(body):
	$InteractBubble.visible = false;
