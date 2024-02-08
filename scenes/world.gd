extends Node2D

#signal scene_changed(world_name)
#var extered = false

#@export var world_name: String = "world"

#func _process(delta):
	#if extered:
		#if Input.is_action_just_pressed("ui_accept"):
			#emit_signal("world_changed", world_name)
			#
#
#func _on_area_house_body_entered(body):
	#if body is PhysicsBody2D:
		#extered = true
#func _on_area_house_body_exited(body):
	#extered = false
#func _on_area_door_body_entered(body):
	#if body is PhysicsBody2D:
		#extered = true
#func _on_area_door_body_exited(body):
	#extered = false
