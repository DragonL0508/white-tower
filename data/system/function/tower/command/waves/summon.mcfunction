execute unless entity @e[type=marker,tag=mob_spawn_spot,tag=!has_summoned] run tag @e remove has_summoned

tag @e[tag=!has_summoned,type=marker,tag=mob_spawn_spot,sort=random,limit=1] add this

$execute as @e[type=marker,tag=this] at @s run function hostile:summon/$(wave_this_mob)
tag @e[tag=this] add has_summoned

tag @e remove this