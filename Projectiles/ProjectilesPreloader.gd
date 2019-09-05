extends ResourcePreloader

var dictionary = {
	
	"ProjectileTemplate":preload("res://Projectiles/ProjectileTemplate.tscn"),
	"ProjectileMech1":preload("res://Projectiles/Mechanic1/ProjectileMech1.tscn"),
	"ProjectileMech2":preload("res://Projectiles/Mechanic2/ProjectileMech2.tscn")
	
	
	
}



func _return_Projectile(nameString:String):
	
	var resource = dictionary[nameString]
	
	return resource