extends Control

@onready var text_history = $Panel2/VBoxContainer/Label
@onready var new_text = $Panel2/TextEdit




# Called when the node enters the scene tree for the first time.
func _ready():
	str(new_text)
	str(text_history)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if Input.is_action_just_pressed("enter"):
		pass

func _on_start_pressed():
	pass # Replace with function body.


func _on_walk_pressed():
	pass # Replace with function body.


func _on_search_pressed():
	pass # Replace with function body.


func _on_leave_pressed():
	pass # Replace with function body.


func _on_pick_up_pressed():
	pass # Replace with function body.


func _on_drop_item_pressed():
	pass # Replace with function body.


func _on_talk_pressed():
	pass # Replace with function body.


func _on_other_pressed():
	pass # Replace with function body.

func _on_text_edit_text_set():
	pass

func _on_text_edit_text_changed():
	pass
