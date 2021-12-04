extends Area2D

export var value = 1

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	# rotate 90 degrees a second
	rotation_degrees += 90 * delta


func _on_Coin_body_entered(body):
	# was it the player?
	if body.name == "Player":
		body.collect_coin(value)
		queue_free()
