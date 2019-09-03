extends KinematicBody2D

const SPEED = 150
var move_dir = Vector2()

func _ready():
	$motion.play("moving")
	pass # Replace with function body.

func _physics_process(_delta):
	looking()
	controls_loop()
	movement_loop()
	pass

func controls_loop() -> void:
	var LEFT = Input.is_action_pressed("ui_left")
	var RIGHT = Input.is_action_pressed("ui_right")
	var UP = Input.is_action_pressed("ui_up")
	var DOWN = Input.is_action_pressed("ui_down")
	
	move_dir.x = -int(LEFT) + int(RIGHT)
	move_dir.y = -int(UP) + int(DOWN)
	pass

func movement_loop() -> void:
	var motion = move_dir.normalized() * SPEED
	motion = move_and_slide(motion, Vector2(0,0))
	pass

func looking() -> void:
	var look = get_global_mouse_position() - global_position
	if look.x > 0:
		$Sprite.flip_h = false
	else:
		$Sprite.flip_h = true
	pass