		extends Button # Or Control, depending on your setup

func _on_pressed():
	# Reloads the current scene, resetting all nodes
	get_tree().reload_current_scene()
func _input(event):
	
	if event.is_action_pressed("ui_accept"): # E.g., Enter key
		get_tree().reload_current_scene()
