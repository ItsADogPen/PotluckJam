extends "res://Characters/CharacterTemplate.gd"


var demon_meter : int = 0
var corruption : int = 0


func _ready():
	
	_initialize()
	
	pass

func _initialize():
	
	hp = 3
	speed = 250.0000000000
	type = "Goddess"
	
	
	pass

func _physics_process(delta):
	
	_controls(delta)
	motion = move_and_slide(motion, Vector2(0,0))
	
	
	if demon_meter >= 100:
		corruption += 1
		demon_meter = 0
	
	if corruption > 20:
		corruption = 20
	
	
	pass

func _controls(delta):
	
	var left = Input.is_action_pressed("a")
	var right = Input.is_action_pressed("d")
	var up = Input.is_action_pressed("w")
	var down = Input.is_action_pressed("s")
	var shoot_1 = Input.is_action_just_pressed("mech1")
	var shoot_2 = Input.is_action_just_pressed("mech2")
	
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
	
	
	
	# shooting
	if shoot_1:
		
		var mouse_pos = get_global_mouse_position()
		var current_pos = self.global_position
		
		var direction = (mouse_pos-current_pos).normalized()
		
		var grab_projectile = ProjectilesPreloader._return_Projectile("ProjectileMech1")
		var projectile = grab_projectile.instance()
		get_parent().get_parent().proj_container.add_child(projectile)
		projectile.global_position = current_pos
		projectile.velocity = direction
		
		
		
		print("Shooting")
		
	
	if shoot_2:
		
		var mouse_pos = get_global_mouse_position()
		var current_pos = self.global_position
		
		var direction = (mouse_pos-current_pos).normalized()
		
		var grab_projectile = ProjectilesPreloader._return_Projectile("ProjectileMech2")
		var projectile = grab_projectile.instance()
		get_parent().get_parent().proj_container.add_child(projectile)
		projectile.global_position = current_pos
		projectile.velocity = direction
		
		
		
		print("Shooting")
		
	
	
	pass