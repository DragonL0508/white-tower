#kill interaction
execute positioned ~ ~1.25 ~ run kill @e[type=interaction,tag=spell.hitbox,sort=nearest,limit=1]
#tag clear
tag @s remove ms.holding