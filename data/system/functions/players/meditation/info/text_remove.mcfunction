execute as @e[type=marker,tag=meditation.info,distance=..5] at @s \
    run function system:players/meditation/info/remove_effects

execute if entity @s[tag=meditation.STR] \
    as @e[type=marker,tag=meditation.info,distance=..5] at @s \
    run function hostile:remove {target:"@e[type=allay, distance=..5]"}

kill @e[type=text_display, tag=meditation.text_info, distance=..5]