#Made By Fan_Fan_tom
scoreboard players operation tmp id = @s id

execute as @e[type=!#hp_system:nothing,scores={id=1..}] if score @s id = tmp id run tag @s add same_id_tp

tp @s @e[tag=same_id_tp,sort=nearest,limit=1]
tag @e[tag=same_id_tp] remove same_id_tp