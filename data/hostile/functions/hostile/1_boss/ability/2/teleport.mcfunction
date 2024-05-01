execute at @s run function hostile:hostile/1_boss/ability/2/summon_teleporter
tp @s ~ ~ ~
execute at @s run function hostile:hostile/1_boss/ability/2/summon_teleporter

scoreboard players add @s tp_counts 1

function cb:schedule {ticks:30,selector:"@s",command:"function hostile:hostile/1_boss/ability/2/check_counts"}