extends TownGuard


func _physics_process(delta):
	if($InteractBubble.visible && Input.is_action_pressed("Interact")):
		print("INTERACT WITH GUARD")
