particle flash ~ ~ ~ 0 0 0 0 1 force
particle firework ~ ~ ~ 0 0 0 0.25 50 force

playsound entity.generic.explode master @a[team=intower] ~ ~ ~ 2 1 1

execute as @a[distance=..3] run damage @s 4 generic