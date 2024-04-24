execute unless block ~0.5 ~ ~ #system:nothing store result entity @s Rotation[0] float -1 run data get entity @s Rotation[0]
execute unless block ~-0.5 ~ ~ #system:nothing store result entity @s Rotation[0] float -1 run data get entity @s Rotation[0]

execute unless block ~ ~ ~0.5 #system:nothing run function prj:projectiles/1_miniboss_sweep/bounce/zbounce
execute unless block ~ ~ ~-0.5 #system:nothing run function prj:projectiles/1_miniboss_sweep/bounce/zbounce