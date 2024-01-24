#kill interaction
execute positioned ~ ~1.25 ~ run kill @e[type=interaction,tag=spell.hitbox,sort=nearest,limit=1]

#tag clear
tag @s remove ms.holding
tag @s remove spelling

#scoreboard reset
scoreboard players reset @s spell.button
scoreboard players reset @s spell.clicked.1
scoreboard players reset @s spell.clicked.2
scoreboard players reset @s spell.clicked.3
scoreboard players reset @s spell.timer
scoreboard players reset @s spell.what_spell
scoreboard players set @s actionbar_type 1

#title clear & reset
title @s clear
title @s reset

#attribute
attribute @s generic.movement_speed base set 0.1