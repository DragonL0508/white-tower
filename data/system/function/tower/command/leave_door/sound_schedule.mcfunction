schedule function system:tower/command/leave_door/sound_schedule 1t
function system:tower/command/leave_door/play_sound

scoreboard players remove door.animation.timer any.timer 1
execute if score door.animation.timer any.timer matches 0 run schedule clear system:tower/command/leave_door/sound_schedule