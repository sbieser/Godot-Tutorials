extends Node

# Called when the node enters the scene tree for the first time.
func _ready():
	print("Hello World")
	
#	#every node has a name
	print(get_parent().name) #Prints Parent
#
#	#can be nested until we run out of parents, when no more parents exist get_parent() returns nill
	print(get_parent().get_parent().name) #Prints Grandparent
#
#	#get current: Child1
#	print(get_node(".").name)
#
#	#get node above me, use it like relative paths: Parent
#	print(get_node("..").name)
#	print(get_node("../..").name) #will print Grandparent
#	print(get_node("../Child2").name)#will print Child2
#
#	#usually to get root node
#	#get_tree() has the entire node hierarchy
#	print(get_tree()) #SceneTree, which is not Node, but a MainLoop object, it contains a Viewport
#	print(get_tree().get_root()) #Viewport, which is a Node and its children are the rest of the nodes
#	print(get_tree().get_root().get_node("MyRoot").name)
#
#	print(get_tree().get_root().get_node("MyRoot/Grandparent/Parent/Child2").name)
#
#	print(get_viewport().get_node("MyRoot").name)
	
	