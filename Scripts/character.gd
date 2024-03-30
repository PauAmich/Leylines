extends Node2D
class_name Character

@export var health : int
@export var speed : int
@export var spriteSheet : AnimatedSprite2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func move_character(direction,speed,delta):
	position += direction*speed*delta;
	# Change animation
	pass
