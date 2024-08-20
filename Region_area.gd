extends Area2D
var nodes = []
var region_name =''

# Called when the node enters the scene tree for the first time.
func _ready():
	pass# Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
	



func _on_child_entered_tree(node):
	nodes.append(node)
	if node.is_class("Polygon2D"):
		if region_name[-1] == "USA":
			node.color = Color(0,0,255,0.5)
		elif region_name[-1] == "CAN":
			node.color = Color(255,0,0,0.5)
		else:
			node.color = Color(0,255,0,0.5)

func _on_mouse_entered():
	print(region_name)

func _on_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.is_pressed():
		#region_name[0] = "CAN"
		if len(nodes) > 2:
			for i in range(1, len(nodes), 2):
				nodes[i].color = Color(255, 0, 0, 0.5)
		else:
			nodes[1].color = Color(255,0,0,0.5)

