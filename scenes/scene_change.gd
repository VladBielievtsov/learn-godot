#extends Node2D
#
#var next_world = null
#
#@onready var current_world = $World
#@onready var anim = $AnimationPlayer
#
#func _ready() -> void:
	#current_world.connect("world_changed", self, "handle_world_changed")
#
#func handle_world_changed(current_world_name: String):
	#print(current_world_name)
	#var next_world_name: String
	#
	#match current_world_name:
		#"world":
			#next_world_name = "house"
		#"house":
			#next_world_name = "world"
		#_:
			#return
	#
	#next_world = load("res://scenes/" + next_world_name + ".tscn").instance()
	#next_world.z_index = -1
	#add_child(next_world)
	#anim.play("fade_in")
	#next_world.connect("world_changed", self, "handle_world_changed")
#
#
#func _on_animation_player_animation_finished(anim_name):
	#match anim_name:
		#"fade_in":
			#current_world.queue_free()
			#current_world = next_world
			#current_world.z_index = 0
			#next_world = null
			#anim.play("fade_out")
