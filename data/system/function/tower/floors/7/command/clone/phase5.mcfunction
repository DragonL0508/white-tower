#5 -> 1
clone 3006 61 2796 2991 70 2773 2991 33 2773
#execute as @e[type=marker,tag=floor7.crystal] at @s run function system:tower/floors/7/command/draw_circle
#execute as @e[type=marker,tag=floor7.crystal] at @s run particle minecraft:happy_villager ~ ~ ~ 10 10 10 1 300 force
#playsound entity.zombie_villager.converted master @a[team=intower] ~ ~ ~ 2 2 1

schedule function system:tower/floors/7/command/clone/phase1 3s