extends RigidBody2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	$Anim.play("idle")
	$run.hide()
	$attack1.hide()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("ui_left"):
		$idle.hide()
		$attack1.hide()
		$run.show()
		$Anim.play("run")
	if Input.is_action_pressed("ui_up"):
		$idle.hide()
		$run.hide()
		$attack1.show()
		$Anim.play("attack1")
