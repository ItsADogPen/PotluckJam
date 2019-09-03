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