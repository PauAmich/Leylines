extends AnimatedCharacter
class_name Wizard

# Called when the node enters the scene tree for the first time.
func _ready():
	# Spawn using the "appear" animation
	overrideAnimation = true;
	bodySpriteSheet.play("Appear")
	overrideAnimation = false;
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	var direction = Input.get_vector("Left","Right","Up","Down").normalized();
	move_character(direction,speed,delta);
	animate_character(direction)
	pass

func _on_interact_box_entered(body):
	print("ENTERED")
	if body.name == "MainCharacter":
		get_node("InteractDialog").show()
	pass # Replace with function body.

func _on_interact_box_exited(body):
	get_node("InteractDialog").hide()
	pass # Replace with function body.
