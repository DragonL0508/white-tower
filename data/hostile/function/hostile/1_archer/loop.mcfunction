#make mob execute these per tick

execute if entity @a[gamemode=adventure,distance=..7] unless entity @s[tag=player_nearby] run function hostile:hostile/1_archer/ability/switch_to_sword
execute unless entity @a[gamemode=adventure,distance=..7] if entity @s[tag=player_nearby] run function hostile:hostile/1_archer/ability/switch_to_bow

execute if entity @a[gamemode=adventure,distance=..7] run tag @s add player_nearby
execute unless entity @a[gamemode=adventure,distance=..7] run tag @s remove player_nearby

#DO NOT modify the following functions unless you know what you're doing.
#-----

#-----