extends Node

var spawn_point = Vector2(2199, -2772)# init (2199, -2772) test(250, -16)
var collected_checkpoints = {}
var collected_items = {}
var coin = 0
var kill =  false
var colide =  false
var cooldown = true
var path = 0
var destroy = 0

func update_spawn(new_point, checkpoint_id):
	spawn_point = new_point
	if checkpoint_id:
		collected_checkpoints[checkpoint_id] = true

func is_checkpoint_collected(checkpoint_id):
	return collected_checkpoints.has(checkpoint_id) and collected_checkpoints[checkpoint_id]

func collect_item(item_id):
	collected_items[item_id] = true

func is_item_collected(item_id):
	return item_id in collected_items and collected_items[item_id]

func reset():
	if cooldown == true:
		cooldown = false
		Engine.time_scale = 1
		get_tree().reload_current_scene()
	$Timer.start()
		
	
func _on_timer_timeout():
	cooldown = true # Replace with function body.
