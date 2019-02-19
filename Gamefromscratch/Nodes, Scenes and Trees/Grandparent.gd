extends Node

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	
	#print(get_parent().get_parent().name) #Prints root
	
#	#these are the same
#	print(get_node("Parent").name) #This will print "Parent"
#	print($Parent.name) #this is cool shorthand #This will print "Parent"
#
#	print($Parent.get_child(0).name) #children of a node are indexed, this will print Child1
#	print($Parent.get_child(1).name) #this will print Child2
#
#	#searches only descendants, and on the node name
#	print(find_node("Child2",true,false).name)
#	#print(find_node("something",true,false).name) #will return null instance, so check for existence
#
#	print($Parent.get_children()[0].name) #prints Child1
#	print($Parent.get_children()[1].name) #prints Child2
#
#	#get_tree().change_scene("MyScene2.tscn") #responsible for switching between scenes, will not work right now