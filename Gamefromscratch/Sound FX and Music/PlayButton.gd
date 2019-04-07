extends Button

var player

# Called when the node enters the scene tree for the first time.
func _ready():
	player = get_tree().get_root().get_node("Node/AudioStreamPlayer")
	

func _on_PlayButton_pressed():
	if get_node("/root/Node/PanelContainer/VBoxContainer/LoopContainer/CheckBox").pressed == true:
		setLoopMode(player.stream, 1)
	else:
		setLoopMode(player.stream, 0)
	player.play()

func setLoopMode(stream,loop):
	print(player)
	print(stream)
	if stream is AudioStreamOGGVorbis:
		stream.loop = bool(loop)
	else:
		stream.loop_mode = loop 

func _on_StopButton_pressed():
	player.stop()
