particle large_smoke ~ ~ ~ 0 0.25 0 0 15 force
particle firework ~ ~ ~ 0 0 0 0.25 100 force

playsound entity.generic.explode master @a[team=intower] ~ ~ ~ 2 1 1
playsound block.lava.extinguish master @a[team=intower] ~ ~ ~ 2 1 1

execute as @a[distance=..3] run damage @s 4 generic

kill @s