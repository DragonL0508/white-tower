tp @s @e[team=hostile_1_holy_bear,sort=nearest,limit=1]
data modify storage ability:cache AngryAt set from entity @e[team=hostile_1_holy_bear,sort=nearest,limit=1] AngryAt
function prj:projectiles/1_holy_bear_attack/explode/aim_player with storage ability:cache

tp @s ~ ~0.1 ~ ~ 0