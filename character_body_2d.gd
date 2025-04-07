extends CharacterBody2D
var life = 3

func _physics_process(delta: float) -> void:
	if life == 0 or life <= 0:
		$"../../..".queue_free()
func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.name == ("bullet"):
		life -= 2
