extends "res://Characters/CharacterTemplate.gd"

func _ready():
	
	_initialize()
	
	pass

func _initialize():
	
	hp = 1
	speed = 100.0
	type = "Human"
	
	pass

func _physics_process(delta):
	
	pass