extends Area2D

var in_area = false;
var stage = 0;
var text = ""
var text2 = "Good Job!\nTask 1/3\nCompleted" 

onready var node = get_node("../Sprite2");
onready var text_node = get_node("../Sprite2/RichTextLabel")

func _ready():
	text = "Press E to \ninteract"
	text_node.set_text(text)

func _input(event):
	if event.is_action_pressed("interact"):
		stage += 1
		if stage == 1:
			print("task complete")
			text_node.set_text(text2)


func _on_Area2D_body_entered(body):
	if body.get_name() == 'Player':
		in_area = true;

func _on_Area2D_body_exited(body):
	if body.get_name() == 'Player':
		in_area = false;
