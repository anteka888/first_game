extends Node
@onready var player_health = 3
@onready var gold_collected = 0
@onready var have_two = true
@onready var current_w = 1
var level = 1 
var save_path = "user://level.save"
func _ready() -> void:
	load_file()
func save():
	var file = FileAccess.open(save_path, FileAccess.WRITE)
	file.store_var(level)
func load_file():
	if FileAccess.file_exists(save_path):  # تأكد إن الملف موجود قبل فتحه
		var file = FileAccess.open(save_path, FileAccess.READ)
		level = file.get_var()  # بدون بارامترات
