extends Button

#programmatically set the text of the button
func _on_Button_pressed():
	pass
	#self.text = "Clicked"

#programatically set the color of the button
func _on_Button_mouse_entered():
	pass
	#self.add_color_override("font_color_hover", Color(0,0,0))

#programmatically set the theme of the button
func _on_Button_ready():
	pass
	#var myTheme = Theme.new()
	#myTheme.set_color("font_color", "Button", Color(0,0,1))
	#self.set_theme(myTheme)