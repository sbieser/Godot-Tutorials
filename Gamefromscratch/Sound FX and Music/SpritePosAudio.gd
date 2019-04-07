extends Sprite

# Called when the node enters the scene tree for the first time.
func _ready():
	get_viewport().audio_listener_enable_2d = true #enabled by default, should not have to do this
	#$AudioStreamPlayer2D.play()
	
func _process(delta):
	if self.position.x > 0 - self.texture.get_width():
		move_local_x(-1)
	else:
		self.position.x = get_viewport().get_visible_rect().size.x
	