extends Node2D

const GrassEffect = preload("res://szenes/Effekts/GrassEffect.tscn")

func creat_grass_effect():
	var grassEffect = GrassEffect.instance()
	get_parent().add_child(grassEffect)
	grassEffect.global_position = global_position


func _on_Hurtbox_area_entered(area):
	creat_grass_effect()
	queue_free()
