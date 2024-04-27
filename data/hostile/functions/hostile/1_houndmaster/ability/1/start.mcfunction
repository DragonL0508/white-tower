#check wolf counts
tag @s add houndmaster_me
execute as @e[tag=hostile_1_wolf] if score @s hostile_id = @e[tag=houndmaster_me,limit=1] hostile_id run tag @s add wolf_check
execute store result score @s summoned_entity_counts run execute if entity @e[tag=wolf_check]
scoreboard players add @s summoned_entity_counts 1
tag @e remove wolf_check
tag @s remove houndmaster_me

#skip the ability
execute if score @s summoned_entity_counts matches 3.. run return 0

#summon wolf
tag @s add houndmaster_me
execute positioned ~ ~1 ~ run function hostile:summon/1_wolf
tag @s remove houndmaster_me