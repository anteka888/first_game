extends Marker2D
var bullet_path = preload ("res://gun/bullet.tscn")
func _physics_process(float) -> void:
	if Input.is_action_pressed("left"):
		$".".rotation_degrees = 180
		%gun_sprite.flip_v = true
	elif Input.is_action_pressed("right"):
		$".".rotation_degrees = 0
		%gun_sprite.flip_v = false
	if Input.is_action_just_pressed("action"):
		fire()
		%gun_sprite.animation = "fire"
func fire():
	var bullet = bullet_path.instantiate()
	bullet.dir = rotation
	bullet.pos = %respond_point.global_position
	bullet.rota = %respond_point.global_rotation
	get_tree().current_scene.add_child(bullet)
func _process(delta: float) -> void:
	if $".".is_visible_in_tree():
		set_physics_process(true)
	else:
		set_physics_process(false)
