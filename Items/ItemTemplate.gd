extends Node2D

onready var area2D = $Area2D
onready var area2D_shape = $Area2D/CollisionShape2D
onready var animation = $AnimatedSprite

var type : String = "Item"
var subType : String
var modifier : int


func _ready():
	
	_connect_Signals()

func _connect_Signals():
	
	area2D.connect("body_entered", self, "_on_Body_Entered")
	
	pass

func _on_Body_Entered(body):
	
	if body.type == "Goddess":
		if subType == "HumanBlood":
			body.demon_meter += 1
		self.queue_free()
	
	
	pass