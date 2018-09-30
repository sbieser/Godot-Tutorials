extends Node2D

#this is a comment
export var numBoxes = 5
export var dimensions = { Width=200, Height=200}
var boxLocations = [] # = Array() would be equivalent

#_ready is one of the callbacks inherited from Node, called after the Node is added to
#Generally this is where you do your setup and configuration
func _ready():
	for i in range(numBoxes):
		var x = rand_range(0, get_viewport().get_visible_rect().size.x) 
		var y = rand_range(0, get_viewport().get_visible_rect().size.y)
		boxLocations.append(Vector2(x,y))
		
	#the _update() function will only be called if you call set_process(true)
	#set_process(true)
	
#func _update(): #tutorial had this but this is actually not a function that exists in Node or Node2D 
#	pass

func _draw():
	print("_draw")
	for box in boxLocations:
		var rect = Rect2(box.x, box.y, dimensions.Width, dimensions.Height)
		draw_rect(rect, Color(1.0,0.0,0.0))
	
