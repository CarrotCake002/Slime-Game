extends Area2D

signal coinCollected;

func _on_coin2d_body_entered(body):
	if (body.get_name() == "player"):
		body.add_coin();
		queue_free();
