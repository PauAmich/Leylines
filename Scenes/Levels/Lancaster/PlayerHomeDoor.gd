extends Area2D

var door_entered = false
# Called when the node enters the scene tree for the first time.
func _ready():

	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process (delta):
	if(door_entered == true):
		if(Input.is_action_pressed("Down")):
			get_tree().change_scene_to_file("res://Scenes/Levels/Lancaster/featherdown.tscn")
			#SceneLoader._change_scene_to("Lancaster\\featherdown")
#


func _on_body_entered(body : PhysicsBody2D):
	door_entered = true


func _on_body_exited(body):
	door_entered = false
