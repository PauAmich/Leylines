extends AnimatedCharacter
class_name Wizard

var interactable = false;

# Called when the node enters the scene tree for the first time.
func _ready():
	# Reprodueix "appear" (tarda 1 segon), passa a "idle"
	bodySpriteSheet.play("Appear")
	await get_tree().create_timer(1).timeout
	bodySpriteSheet.play("Idle")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	if(interactable):
		get_node("InteractDialog").show()
		if(Input.is_action_just_pressed("Interact")):
			print("INTERACTABLE")
		
	else:
		get_node("InteractDialog").hide()
	

func _on_interact_box_entered(body):
	if body.name == "MainCharacter":
		interactable = true

func _on_interact_box_exited(body):
	interactable = false;
	pass # Replace with function body.
