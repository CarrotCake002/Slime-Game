extends CanvasLayer

var coins = 0;

func _ready():
	$score.text = String(coins);

func handleCoinCollected():
	print("Coin collected");
	coins += 1;
	$score.text = String(coins);
	
	if (coins == 4):
		get_tree().change_scene("res://Scenes/world" + str(int(get_tree().current_scene.name) + 1) + ".tscn")

	
