#visuals
execute as @e[type=minecraft:block_display,tag=leave_door_display] at @s run tp @s ~ ~10 ~

#sounds
scoreboard players set door.animation.timer any.timer 30
function system:tower/command/leave_door/sound_schedule