tag @s add me

playsound entity.fox.teleport master @a[team=intower] ~ ~ ~ 2 1 1
playsound entity.evoker.cast_spell master @a ~ ~ ~ 2 1.5 1
particle flash ~ ~1 ~ 0 0 0 0 1 force

execute as @p[gamemode=adventure] at @s run tp @e[tag=me] @e[type=marker,tag=mob_spawn_spot,sort=nearest,limit=1]

playsound entity.fox.teleport master @a[team=intower] ~ ~ ~ 2 1 1
playsound entity.evoker.cast_spell master @a ~ ~ ~ 2 1.5 1
particle flash ~ ~1 ~ 0 0 0 0 1 force

tag @s remove me