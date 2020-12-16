extends Node2D

var speed
var velocity = Vector2()
var damage : int
var proc_type : String

onready var animation = $AnimatedSprite
onready var area2D = $Area2D
onready var area2D_shape = $Area2D/CollisionShape2D

func _ready():
	
	area2D.connect("body_entered", self, "_on_Body_Entered")
	
	pass


func _physics_process(delta):
	
	var motion = Vector2(velocity.x,velocity.y) * speed
	position += motion
	
	pass

func _destroy():
	
	self.queue_free()
	
	pass

func _on_Body_Entered(body):
	
	body._modify_HP(damage)
	_destroy()
	
	
	pass