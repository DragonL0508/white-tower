#check vex counts
tag @s add magician_me
execute as @e[tag=hostile_1_magician_vex] if score @s hostile_id = @e[tag=magician_me,limit=1] hostile_id run tag @s add vex_check
execute store result score @s summoned_entity_counts run execute if entity @e[tag=vex_check]
scoreboard players add @s summoned_entity_counts 1
tag @e remove vex_check
tag @s remove magician_me

#skip the ability
execute if score @s summoned_entity_counts matches 3.. run return run function hostile:hostile/1_magician/ability/2/start


#summon vex
tag @s add magician_me
playsound entity.evoker.prepare_summon master @a[team=intower] ~ ~ ~ 2 2 1
execute positioned ~ ~4 ~ run function hostile:summon/1_magician_vex
tag @s remove magician_me