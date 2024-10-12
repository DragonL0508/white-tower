scoreboard players add @s draw 1

execute rotated ~ ~ run particle end_rod ~ ~ ~ ^ ^ ^1000000 0.000001 0 force

execute if score @s draw matches 1..89 rotated ~4 ~ run function system:tower/floors/7/command/draw_circle
execute if score @s draw matches 90 run scoreboard players reset @s draw