#1 -> 2
clone 3005 33 2754 2992 44 2730 2992 33 2772
execute as @e[type=marker,tag=floor7.crystal] at @s run function system:tower/floors/7/command/draw_circle
execute as @e[type=marker,tag=floor7.crystal] at @s run particle minecraft:happy_villager ~ ~ ~ 10 10 10 1 300 force
playsound entity.zombie_villager.converted master @a[team=intower] ~ ~ ~ 2 2 1

schedule function system:tower/floors/7/command/clone/phase2 3s