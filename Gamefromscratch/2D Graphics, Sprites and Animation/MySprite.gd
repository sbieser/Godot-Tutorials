extends Sprite

func _ready():
	#position sprite to center of screen
	position = Vector2(get_viewport().size.x/2, get_viewport().size.y/2)
	#scale the sprite down %30
	scale = Vector2(0.3,0.3)
	#rotate the sprite to 90 degrees
	rotate(deg2rad(90))
	
	set_process(true)
	
#how long has it been since the last time _process has been called
func _process(delta):
	#if want to normalize anything across time and across different types of hardware, use delta
	rotation = self.rotation + deg2rad(90 * delta)
	
	#moves the sprite
	var translateVector = Vector2(-100 * delta, 0);
	translate(translateVector)
	
	#print("rotation: " + str(rotation) + " translate: " + str(translateVector.x) + "," + str(translateVector.y))
	
	#When center x moves off screen on left side, move to right side
	if position.x < 0:
		position = Vector2(get_viewport().size.x, get_viewport().size.y/2)