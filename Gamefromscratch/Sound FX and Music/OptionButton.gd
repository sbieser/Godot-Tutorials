extends OptionButton

var player
var files = []

# Called when the node enters the scene tree for the first time.
func _ready():
	player = get_tree().get_root().get_node("Node/AudioStreamPlayer")
	var dir = Directory.new()
	if dir.open("res://") == OK:
		dir.list_dir_begin()
		var file = dir.get_next()
		while file != "":
			if file.ends_with("wav") or file.ends_with("ogg"):
				files.append(file)
			file = dir.get_next()
		
		for i in range(files.size()):
			self.add_item(files[i],i)
	player.stream = load("res://" + files[0])
	print(files)

func _on_OptionButton_item_selected(ID):
	print(ID)
	if files.size() > 0:
		player.stream = load("res://" + files[ID])
