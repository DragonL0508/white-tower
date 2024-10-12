execute as @e[type=marker,tag=meditation.info,distance=..5] at @s \
    run function system:players/meditation/info/remove_effects

execute if entity @s[tag=meditation.HP] \
    as @e[type=marker,tag=meditation.info,distance=..5] at @s \
    run function system:players/meditation/info/remove_effects/hp

kill @e[type=text_display, tag=meditation.text_info, distance=..5]