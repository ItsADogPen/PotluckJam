extends "res://Projectiles/ProjectileTemplate.gd"

func _ready():
	speed = 100
	damage = 1
	proc_type = "Mech2"

func _on_Body_Entered(body):
	
	if body.type == "Human":
		body._modify_HP(damage)
		_destroy()
	else: pass