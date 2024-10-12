execute as @e[tag=key_cat] at @s run function system:tower/floors/4/key/cat
execute as @e[type=item,tag=key] at @s unless entity @e[tag=key_cat,distance=..1] run data merge entity @s {PickupDelay:0}
execute as @e[type=marker,tag=leave_teleporter] at @s run function system:tower/floors/4/key/level_end