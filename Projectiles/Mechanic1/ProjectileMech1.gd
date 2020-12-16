extends "res://Projectiles/ProjectileTemplate.gd"

func _ready():
	speed = 100
	damage = 1
	proc_type = "Mech1"

func _on_Body_Entered(body):
	
	if body.type == "DarkSpirit":
		body._modify_HP(damage)
		_destroy()
	else: pass