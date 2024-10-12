#leave teleports
execute as @e[type=marker,tag=leave_teleporter] at @s run function system:tower/command/leave_teleporter

#is everyone left the level?
execute unless entity @a[team=intower] run function system:tower/command/level_close