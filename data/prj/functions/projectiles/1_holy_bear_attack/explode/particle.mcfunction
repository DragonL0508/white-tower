scoreboard players add @s draw 1

execute rotated ~ 0 run particle end_rod ~ ~ ~ ^ ^ ^1000000 0.0000004 0 force

execute if score @s draw matches 1..89 rotated ~4 ~ run function prj:projectiles/1_holy_bear_attack/explode/particle
execute if score @s draw matches 90 run scoreboard players reset @s draw