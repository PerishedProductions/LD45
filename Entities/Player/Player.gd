extends KinematicBody2D

var walking_speed: int = 3000

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	var input: Vector2 = Vector2(Input.get_action_strength("player_d") - Input.get_action_strength("player_a"), Input.get_action_strength("player_s") - Input.get_action_strength("player_w"))
	
	if input.x > 0:
		$Sprite.set_flip_h(true)
	elif input.x < 0:
		$Sprite.set_flip_h(false)
	
	move_and_slide(input.normalized() * walking_speed * delta)
