extends CharacterBody2D

@export var SPEED = 20
@export var limit = 0.5
@export var endPoint: Marker2D

@onready var anim = $AnimatedSprite2D

var startPosition
var endPosition

func _ready():
	startPosition = position
	endPosition = endPoint.global_position

func changeDirection():
	var tempEnd = endPosition
	endPosition = startPosition
	startPosition = tempEnd

func updateVelocity():
	var moveDirection = endPosition - position
	if moveDirection.length() < limit:
		changeDirection()
	velocity = moveDirection.normalized() * SPEED

func updateAnimation():
	var animString = "walkUp"
	if velocity.y > 0:
		animString = "walkDown"
	anim.play(animString)

func _physics_process(delta):
	updateVelocity()
	move_and_slide()
	updateAnimation()
