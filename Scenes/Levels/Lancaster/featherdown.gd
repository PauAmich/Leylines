extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():

	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process (delta):
	pass

func _on_home_door_entered(body : PhysicsBody2D):
	if(Input.is_action_pressed("Up")):
			get_tree().change_scene_to_file("res://Scenes/Levels/Lancaster/player_home.tscn")


func _on_leave_featherdown_north(body):
	if(Input.is_action_pressed("Up")):
		get_tree().change_scene_to_file("res://Scenes/Levels/Lancaster/lancaster.tscn")
