execute at @s run function hostile:hostile/1_boss/ability/2/summon_teleporter
execute at @e[tag=boss_tp_mark] run tp @s ~ ~ ~
kill @e[tag=boss_tp_mark]
execute at @s run function hostile:hostile/1_boss/ability/2/summon_teleporter

scoreboard players add @s tp_counts 1

execute if score @s tp_counts matches 3 run function cb:schedule {ticks:30,selector:"@s",command:"function hostile:hostile/1_boss/ability/2/move_start"}