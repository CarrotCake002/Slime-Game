extends Node2D


func _ready():
	$AnimationPlayer.play("spin")


func _on_Area2D_body_entered(body):
	if (body.get_name() == "player"):
		get_tree().reload_current_scene();
