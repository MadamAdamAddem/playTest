extends CharacterBody2D
@onready var animation: AnimatedSprite2D = $Animation


const SPEED = 80.0
const JUMP_VELOCITY = -400.0


func _physics_process(delta: float) -> void:

	var left : int = int(Input.is_action_pressed("left")) * -1
	var right : int = int(Input.is_action_pressed("right"))
	var up : int = int(Input.is_action_pressed("up")) * -1
	var down : int = int(Input.is_action_pressed("down"))

	velocity.x = (left + right) * SPEED
	velocity.y = (up + down) * SPEED
	
	if velocity.x == 0:
		animation.play("still")
	elif velocity.x > 0:
		animation.play("walk_right")
	else:
		animation.play("walk_left")
	
	move_and_slide()
