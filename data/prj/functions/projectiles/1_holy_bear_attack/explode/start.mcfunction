particle flash ~ ~ ~ 0 0 0 0 1 force
function prj:projectiles/1_holy_bear_attack/explode/particle
playsound entity.generic.explode master @a[team=intower] ~ ~ ~ 2 1 1

scoreboard players reset @s any.timer