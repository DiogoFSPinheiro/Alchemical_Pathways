extends Area2D

@onready var player = $"../Player"

func _on_body_entered(body):
	player.position = Vector2(1922, -1425)
