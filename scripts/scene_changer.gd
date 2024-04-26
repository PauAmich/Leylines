extends CanvasLayer

func _ready():
	$AnimationPlayer.play("fadeIn");
	

# Called when the node enters the scene tree for the first time.
func changeScene(target):
	$AnimationPlayer.play("fadeOut");
	$Scene.get_child(0).free()
	call_deferred("deferredLoadScene",target); # "deferred" per donar tems a netejar l'escena anterior
	

func deferredLoadScene(target):
	var newScene = ResourceLoader.load(target).instantiate();
	$Scene.get_tree().root.add_child(newScene)
	$AnimationPlayer.play("fadeIn");

