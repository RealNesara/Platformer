###
#extends Node

#onready var music = AudioStreamPlayer.new()

#var music_tracks = {
#"title_track":"res://sfx/misoc/Abstraction - night_theme_2.wav"
#}





#var music_db = 1
#var sound_dp = 1

#func change_misoc_db(val):
	#music_db = linear2db(val)
	
#func change_sound_dp(val):
	#sound_dp = linear2db(val)

#func _ready():
	#music.strem = load(music_tracks["main"])
	#add_child(music)
	#music.play()
	
#func play_sound_effects(sfx):
	#var sound = AudioStreamPlayer.new()
	#sound.stream = load(sound_effects[sfx])
	#add_child(sound)
	#sound.play()
	#yield(sound,"finished")
	#sound.queue_free()

