extends Control

@onready var text_history = $Panel2/RichTextLabel
@onready var text_edit = $LineEdit
# Called when the node enters the scene tree for the first time.
func _ready():
	var name = "no_name"
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func _on_line_edit_text_submitted(new_text):
	var _text_historystr = str(text_history)
	
	
	if new_text == "/help":
		text_edit.clear()
		print("command /help typed")
		
		text_history.text =text_history.text + "\n\n/help command used\n\nList of commands:\n/help\n/name_player\n/search_room\n/end_game\n" 
		
		
	elif new_text == "/name_player":
		text_edit.clear()
		print("start to name the player")
		if new_text == "noah":
			print("welcome dev")
	elif new_text == "/search_room":
		text_edit.clear()
		print("you look around the room")
	elif new_text == "/end_game":
		text_edit.clear()
		get_tree().quit()
	else: 
		text_edit.clear()
		print("thats not a command")
