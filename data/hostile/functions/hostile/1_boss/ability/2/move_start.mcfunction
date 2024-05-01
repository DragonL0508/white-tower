execute at @e[tag=boss_teleporter,sort=random,limit=1] run tp @s ~ ~ ~
kill @e[tag=boss_teleporter,sort=nearest,limit=1]
execute as @e[tag=boss_teleporter] at @s run function hostile:hostile/1_boss/ability/2/teleporter_move

playsound minecraft:entity.illusioner.mirror_move master @a[team=intower] ~ ~ ~ 2 1.2 1
particle minecraft:flash ~ ~ ~ 0 0 0 1 2 force
particle minecraft:end_rod ~ ~ ~ 0 0.5 0 0.1 120 force