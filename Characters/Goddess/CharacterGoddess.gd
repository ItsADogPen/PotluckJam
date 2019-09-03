extends "res://Characters/CharacterTemplate.gd"


func _ready():
	
	_initialize()
	
	pass

func _initialize():
	
	hp = 10
	speed = 250.0000000000
	type = "Goddess"
	
	
	pass

func _physics_process(delta):
	
	_controls(delta)
	motion = move_and_slide(motion, Vector2(0,0))
	
	pass

func _controls(delta):
	
	var left = Input.is_action_pressed("ui_left")
	var right = Input.is_action_pressed("ui_right")
	var up = Input.is_action_pressed("ui_up")
	var down = Input.is_action_pressed("ui_down")
	
	if left || right:
		
		var math = int(right)-int(left)
		motion.x = math
	else:
		motion.x = 0
	
	if up || down:
		
		var math = int(down)-int(up)
		motion.y = math
	else:
		motion.y = 0
	
	if motion.length() > 0:
		motion = motion.normalized() * speed
	
	pass