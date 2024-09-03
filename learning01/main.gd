extends Control

@onready var text_history = $Panel2/VBoxContainer/Label

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func _on_line_edit_text_submitted(new_text):
	var _text_historystr = str(text_history)

	
	if new_text == "/help":
		print("command /help typed")
	elif new_text == "/name_player":
		print("start to name the player")
	elif new_text == "/search_room":
		print("you look around the room")
	elif new_text == "/end_game":
		get_tree().quit()
	else: 
		print("thats not a command")
