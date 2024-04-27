#check vex counts
tag @s add magician_me
execute as @e[tag=hostile_1_magician_vex] if score @s 1_magician_id = @e[tag=magician_me,limit=1] 1_magician_id run tag @s add vex_check
execute store result score @s summoned_entity_counts run execute if entity @e[tag=vex_check]
tag @e remove vex_check
tag @s remove magician_me

execute if score @s summoned_entity_counts matches 4.. run return run function hostile:hostile/1_magician/ability/2/start


#summon vex
tag @s add magician_me
playsound entity.evoker.prepare_summon master @a[team=intower] ~ ~ ~ 2 2 1
execute positioned ~ ~4 ~ run function hostile:summon/1_magician_vex
tag @s remove magician_me