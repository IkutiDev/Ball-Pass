extends KinematicBody2D


export var speed = 40.0



# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _physics_process(delta):
	var moveVector = Vector2()
	moveVector.x = int(Input.is_action_pressed("ui_right")) - int(Input.is_action_pressed("ui_left"))
	if moveVector.x != 0 :
		$AnimatedSprite.scale.x = sign(moveVector.x)
		$AnimatedSprite.animation = "run"
	else:
		$AnimatedSprite.animation = "idle"
	move_and_slide(moveVector*speed)
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
