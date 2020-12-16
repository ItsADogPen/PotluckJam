extends KinematicBody2D

onready var area2D = $Area2D
onready var area2D_shape = $Area2D/CollisionShape2D
onready var animation = $AnimatedSprite
onready var anim_player = $AnimationPlayer
onready var kinematic_shape = $CollisionShape2D

# character variables
var hp : int
var speed : float
var motion = Vector2()

var type : String

func _die():
	
	### Place die code here
	
	if type == "Human":
		var get_resource = ItemsPreloader._return_Item("ItemHumanBlood")
		var drop_blood = get_resource.instance()
		get_parent().add_child(drop_blood)
		drop_blood.global_position = global_position
		self.queue_free()
		pass
	elif type == "DarkSpirit":
		self.queue_free()
		pass
	elif type == "Gooddess":
		pass
	
	pass

func _modify_HP(amount):
	
	hp -= amount
	
	if hp <= 0:
		_die()
	
	pass