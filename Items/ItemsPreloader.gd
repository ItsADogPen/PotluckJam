extends ResourcePreloader

var dictionary = {
	
	"ItemHumanBlood" : preload("res://Items/HumanBlood/ItemHumanBlood.tscn")
	
}

func _return_Item(nameString:String):
	
	var resource = dictionary[nameString]
	
	return resource