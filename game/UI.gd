extends Control

onready var scoreText = get_node("ScoreText")

# Called when the node enters the scene tree for the first time.
func _ready():
	scoreText.text = "0"


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func set_score_text(score):
	scoreText.text = str(score)
