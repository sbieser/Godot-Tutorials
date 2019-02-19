extends Node

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
#	$FileDialog.show_modal()
	
	#$ConfirmationDialog.show_modal(true)
	#$ConfirmationDialog.get_cancel().connect("pressed", self, "_on_Cancel")

	var diag = AcceptDialog.new()
	diag.get_label().text = "Are you OK with this?"
	self.add_child(diag)
	diag.popup_centered()

func _on_FileDialog_file_selected(path):
	print("File selected at: " + path)

func _on_Cancel():
	print("Cancel button clicked")

func _on_ConfirmationDialog_confirmed():
	print("confirmed handled")
