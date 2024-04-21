particle flash ~ ~ ~ 0 0 0 0 1 force
particle end_rod ~ ~ ~ 0 0 0 0.1 10 force
function prj:projectiles/1_holy_bear_attack/explode/particle
playsound entity.generic.explode master @a[team=intower] ~ ~ ~ 2 1 1

execute as @a[distance=..3.5] run damage @s 6 generic

scoreboard players reset @s any.timer