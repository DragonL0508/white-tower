execute at @e[type=marker,tag=meditation.back,sort=random,limit=1] run function system:players/meditation/finding
tag @e[type=marker,tag=meditation.back,tag=checked] remove checked
scoreboard players reset @s meditation.id