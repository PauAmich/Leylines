extends CharacterBody2D
class_name AnimatedCharacter

@export var health : int
@export var speed : int
@export var spriteSheet : AnimatedSprite2D
var animation = "Idle"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func move_character(direction,speed,delta):
	var collision = move_and_collide(velocity*speed*delta);
	if(!collision):
		position += direction*speed*delta;
	# Change animation

func animate_character(direction):
	if(direction.x == 0 && direction.y == 0):
		animation = "Idle";
	else:
		animation = "Walk";
		
	if(direction.x < 0):
		spriteSheet.flip_h = true;
	
	if(direction.x > 0):
		spriteSheet.flip_h = false;
	
	spriteSheet.play(animation)
