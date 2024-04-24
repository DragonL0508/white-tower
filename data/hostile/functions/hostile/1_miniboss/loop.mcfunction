#make mob execute these per tick
execute if entity @e[tag=hostile_1_miniboss_clone] run scoreboard players set @s invincible 2

execute if score @s invincible matches 1.. if data entity @s {HurtTime:10s} run function hostile:hostile/1_miniboss/ability/invicible

#DO NOT modify the following functions unless you know what you're doing.
#-----

#-----