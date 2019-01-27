extends Sprite

#-----------------------------------------------------------
# Using the Input Map in project settings to define inputs to a specific action label
#-----------------------------------------------------------
func _input(event):
	if event.is_action("LEFT"):
		self.position.x-=1

#-----------------------------------------------------------
#Polling for game controller events using _process
#-----------------------------------------------------------
#var deadZone = 0.2
#var speedMultiplier = 3
#
#func _ready():
#	Input.connect("joy_connection_changed", self, "joyCon_changed")
#
#func joyCon_changed(deviceId, isConnected):
#	if isConnected:
#		print("Joystick " + str(deviceId) + " connected")
#		if Input.is_joy_known(0):
#			print("Recognized controller")
#			print(Input.get_joy_name(0) + " device found")
#	else:
#		print("Controller disconnected")
#
#func _process(delta):
#	if  Input.get_connected_joypads().size() > 0:
#		var xAxis = Input.get_joy_axis(0, JOY_AXIS_0)
#		if abs(xAxis) > deadZone:
#			if xAxis < 0:
#				self.position.x-= 100 * delta * (speedMultiplier * abs(xAxis))
#			if xAxis > 0:
#				self.position.x+= 100 * delta * (speedMultiplier * abs(xAxis))
#		if Input.is_joy_button_pressed(0, JOY_DPAD_UP):
#			self.position.y-=1
#
#		for i in range(16):
#			if Input.is_joy_button_pressed(0,i):
#				print("Button " + str(i) + "pressedm should be " + Input.get_joy_button_string(i))


#-----------------------------------------------------------
#Event driven input using InputEventKey and _input
#-----------------------------------------------------------
#var justwarped = false
#func _input(event):
#	if event is InputEventKey:
#		print("InputKey " + OS.get_scancode_string(event.scancode) + " echo " + str(event.echo) + " pressed " + str(event.pressed))
#
#		#print("Key pressed " + char(event.scancode))
#		#if (event.echo == true):
#		#	print("Key was held down")
#		#else:
#		#	print("Key was first pressed")
#
#	if event is InputEventMouseMotion:
#		if !justwarped:
#			print(event.relative)
#			self.translate(event.relative)
#		else:
#			justwarped = false
#
#	if event is InputEventMouseButton:
#		match event.button_index:
#			BUTTON_LEFT:
#				Input.warp_mouse_position(self.position)
#				justwarped = true
#			BUTTON_RIGHT:
#				self.position = Vector2(get_viewport().size.x/2, get_viewport().size.y/2)	
#

#-----------------------------------------------------------
# Polling for keyboard events on _process
#-----------------------------------------------------------
#func _process(delta):
#	#polling for keyboard events
#	if Input.is_key_pressed(KEY_LEFT):
#		self.position.x -= 1
#	if Input.is_key_pressed(KEY_RIGHT):
#		self.position.x += 1
#	if Input.is_key_pressed(KEY_UP):
#		if Input.is_key_pressed(KEY_SHIFT):
#			self.position.y-=10
#		else:
#			self.position.y-=1
#
#	if Input.is_key_pressed(KEY_Q):
#		get_tree().quit()
#
#	#polling for mose events
#	if Input.is_mouse_button_pressed(BUTTON_LEFT):
#		#tells you where the current position of the mouse is relative to the viewport
#		self.position = get_viewport().get_mouse_position()