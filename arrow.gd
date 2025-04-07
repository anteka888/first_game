extends CharacterBody2D
var rota:float
var pos: Vector2
var dir: float
var speed = 700
func _ready() -> void:
	global_rotation = rota
	global_position = pos
func _physics_process(float) -> void:
	velocity = global_transform.x * speed
	move_and_slide()
func _process(float) -> void:
	if $RayCast2D.is_colliding():
		queue_free()
