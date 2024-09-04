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
	var searched_room = false
	
	if new_text == "help":
		text_edit.clear()
		
		text_history.text =text_history.text + "\n\n*help command used\n\n*List of commands:\n*help\n*name player\n*search room\n*end game\n*look at\n*pick up" 
		text_edit.clear()
		
	elif new_text == "name player":
		text_edit.clear()
		print("start to name the player")
	elif new_text == "look up":
		text_history.text =text_history.text + "\n\n*you look up\n\n*you look upward at the ceiling"
		text_edit.clear()
	elif new_text == "look down":
		text_history.text =text_history.text + "\n\n*you look down\n\n*you look downward at the floor"
		text_edit.clear()
	elif new_text == "end game":
		text_edit.clear()
		get_tree().quit()
	elif new_text == "look at":
		text_history.text =text_history.text + "\n\n*you look, but there is nothing in your hand...\n\n(use \"pick up\" to hold an item in your hand)"
		text_edit.clear()
	elif new_text == "look north":
		text_history.text = text_history.text + "\n\n*you look north"
		text_edit.clear()
	elif new_text == "look south":
		text_history.text = text_history.text + "\n\n*you look south"
		text_edit.clear()
	elif new_text == "look east":
		text_history.text = text_history.text + "\n\n*you look east"
		text_edit.clear()
	elif new_text == "look west":
		text_history.text = text_history.text + "\n\n*you look west"
		text_edit.clear()
	elif new_text == "pick up" && searched_room == true:
		text_history.text =text_history.text + "\n\n*you reach out, but there is nothing to grab as you havent \"searched\" \n\n(use the search before using pick up items nearby)"
		text_edit.clear()
	elif new_text == "search":
		searched_room = true
		text_history.text =text_history.text + "\n\n*you look around the room and find some items\n\n*you find a \n*book\n*candle\n*candle\n*stick\n*a deck of playing cards"
		text_edit.clear()
		print(searched_room)
	
	else: 
		text_edit.clear()
		text_history.text =text_history.text + "\n\n*that is not a command\n\n*if you need help,\"help\"will help you with a list of commands! "
