title @s times 0 10 10
title @s title {"text": "\uE000"}
tellraw @s {"text": "§7§o*  你睜開了雙眼 *"}
effect give @s blindness 1 0 true
effect clear @s invisibility
effect clear @s speed
effect clear @s jump_boost

execute at @e[type=marker,tag=meditation.back,sort=random,limit=1] run function system:players/meditation/finding
tag @e[type=marker,tag=meditation.back,tag=checked] remove checked
scoreboard players reset @s meditation.id

tag @s remove in_meditation