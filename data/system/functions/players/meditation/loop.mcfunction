#particles
execute as @e[type=interaction, tag=meditation.LUC] at @s run function system:players/meditation/particles/luc
execute as @e[type=interaction, tag=meditation.RES] at @s run function system:players/meditation/particles/res
execute as @e[type=interaction, tag=meditation.STR] at @s run function system:players/meditation/particles/str
execute as @e[type=interaction, tag=meditation.INT] at @s run function system:players/meditation/particles/int

#something else
execute as @e[type=interaction, tag=meditation.interaction] at @s run function system:players/meditation/info/if_player_near_by
execute as @e[type=marker, tag=meditation.info] at @s run function system:players/meditation/info/text_display

#right clicked
execute as @e[type=interaction, tag=meditation.STR] on target run function system:players/meditation/info/message/str
execute as @e[type=interaction, tag=meditation.interaction] run data remove entity @s interaction