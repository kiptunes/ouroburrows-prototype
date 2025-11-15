extends CharacterBody2D


var speed: float = 60
var acceleration: float = 12.5
var friction: float = 8
var coins: int = 0

@onready var sprite = $AnimatedSprite2D
@onready var trail = $Particles/CPUParticles2D
@onready var state_machine = $StateMachine
# left/right motion
# 	if touching wall
# 		flip 90 degrees
func _ready() -> void:
	sprite.play("idle")
	trail.emitting = false
	#state_machine.init(self)

func _unhandled_input(event: InputEvent) -> void:
	pass
	#state_machine.process_input(event)

func _physics_process(delta: float) -> void:
	#state_machine.process_physics(delta)
	var x_input: float = Input.get_action_strength("forwards") - Input.get_action_strength("backwards")
	var v_weight: float = delta * (acceleration if x_input else friction)
	velocity.x = lerp(velocity.x, x_input * speed, v_weight)
	
	if x_input:
		sprite.play("walk")
		trail.emitting = true
		if Input.get_action_strength("forwards") > Input.get_action_strength("backwards"):
			sprite.flip_h = true
		else:
			sprite.flip_h = false
	else:
		trail.emitting = false
		sprite.play("idle")
	
	move_and_slide()
	
func _process(delta: float) -> void:
	pass
	#state_machine.process_frame(delta)

# if up is pressed:
# 	if tile_above is goal:
# 		send signal level complete
# 	elif tile above is wall:
# 		if coin held num < 2:
# 			play animation
# 			flip player 180
# 		else:
# 	 		drop coin (coin held num =1)
# 	 		play animation 

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("interact"):
		print('working')
# 		if coin held num = 1:
# 			pick up coin animation
# 		if coin held num = 2
# 			pick up another coin animation
# 		else:
# 			twitch antenna animation
# 	else:
# 		twitch antenna
# if e is pressed:
# 	if coin held num = 2:
# 		drop coin
# 	elif coin held num = 1:
# 		drop coin
# 	else:
# 		twitch antenna
