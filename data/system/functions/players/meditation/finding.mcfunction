execute if score @s meditation.id = @e[type=marker,tag=meditation.back,sort=nearest,limit=1] meditation.id run tp @s @e[type=marker,tag=meditation.back,sort=nearest,limit=1]
execute if score @s meditation.id = @e[type=marker,tag=meditation.back,sort=nearest,limit=1] meditation.id run kill @e[type=marker,tag=meditation.back,sort=nearest,limit=1]

execute unless score @s meditation.id = @e[type=marker,tag=meditation.back,sort=nearest,limit=1] meditation.id run tag @e[type=marker,tag=meditation.back,sort=nearest,limit=1] add checked
execute unless score @s meditation.id = @e[type=marker,tag=meditation.back,sort=nearest,limit=1] meditation.id at @e[type=marker,tag=meditation.back,sort=random,limit=1,tag=!checked] run function system:players/meditation/finding