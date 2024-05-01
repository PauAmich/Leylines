extends CharacterBody2D
class_name AnimatedCharacter

# Tots els personatges tindran vida i velocitat
@export var health : int
@export var speed : int

# Separem "Body" de "Hand" per què "Body" serveix per el moviment
# i "Hand" per els atacs
@export var bodySpriteSheet : AnimatedSprite2D
#@export var handSpriteSheet : AnimatedSprite2D
var bodyAnimation = "Idle"
var overrideAnimation = false # Used in case we need to override an animation
#var handAnimation = "Idle"

# El "ready" es definirà a cada script propi
func _ready(): 
	pass


# Comprova colisions, només mou si no hi ha colisió
func move_character(direction,speed,delta):
	var collision = move_and_collide(direction*speed*delta);
	if(!collision):
		position += direction*speed*delta;
	# Change animation

# Animació bàsica (si està quiet anima "Idle", si no anima "Walk")
func animate_character(direction):
	if(direction.x == 0 && direction.y == 0):
		bodyAnimation = "Idle";
	else:
		bodyAnimation = "Walk";
		
	if(direction.x < 0):
		bodySpriteSheet.flip_h = true;
	
	if(direction.x > 0):
		bodySpriteSheet.flip_h = false;
	
	if(!overrideAnimation):
		bodySpriteSheet.play(bodyAnimation)
