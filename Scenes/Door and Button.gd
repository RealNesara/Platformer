extends Node2D


func _ready():
	$AnimationPlayer.play("Button up")
	$AnimationPlayer.play("Door Closed")


func _on_Area2D_body_entered(body):
	if body.is_in_group("Player"):
		$AnimationPlayer.play("Button down")
		$AnimationPlayer.play("Door open")
		
