#Made By Fan_Fan_tom
scoreboard players operation tmp id = @s id

execute as @e[type=!#hp_system:nothing,scores={id=1..,hp_bar_timer=0..}] if score @s id = tmp id run tag @s add same_id_tp

tp @s @e[type=!#hp_system:nothing,tag=same_id_tp,limit=1]
execute if entity @e[tag=same_id_tp,type=!#hp_system:low_height,type=!#hp_system:tall_height] at @s run tp @s ~ ~2.4 ~
execute if entity @e[tag=same_id_tp,type=#hp_system:low_height] at @s run tp @s ~ ~1.15 ~
execute if entity @e[tag=same_id_tp,type=#hp_system:tall_height] at @s run tp @s ~ ~3.2 ~
tag @e[tag=same_id_tp] remove same_id_tp