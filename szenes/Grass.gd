extends Node2D

func creat_grass_effect():
	var GrassEffect = load("res://szenes/Effekts/GrassEffect.tscn")
	var grassEffect = GrassEffect.instance()
	var world = get_tree().current_scene
	world.add_child(grassEffect)
	grassEffect.global_position = global_position


func _on_Hurtbox_area_entered(area):
	creat_grass_effect()
	queue_free()
