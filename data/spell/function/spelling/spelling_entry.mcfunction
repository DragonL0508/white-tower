#add tag
tag @s add spelling

#attribute 
attribute @s generic.movement_speed base set 0.025

#actionbar type
scoreboard players set @s actionbar_type 2

#spelling time
execute if score @s spell.what_spell matches 0 run scoreboard players set @s spell.spelling_time 10