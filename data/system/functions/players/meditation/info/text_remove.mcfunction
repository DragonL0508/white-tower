execute as @e[type=marker,tag=meditation.info,distance=..5] at @s \
    run function system:players/meditation/info/remove_effects
    
kill @e[type=text_display, tag=meditation.text_info, distance=..5]