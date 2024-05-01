extends AnimatedCharacter
class_name TownGuard

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _on_interact_box_entered(body):
	if body.name == "MainCharacter":
		get_node("InteractDialog").show()
	pass # Replace with function body.

func _on_interact_box_exited(body):
	get_node("InteractDialog").hide()
	pass # Replace with function body.
