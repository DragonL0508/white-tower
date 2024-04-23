#make mob execute these per tick

execute if entity @a[gamemode=adventure,distance=..4] run item replace entity @s weapon.mainhand with wooden_sword{CustomModelData:100}
execute unless entity @a[gamemode=adventure,distance=..4] run item replace entity @s weapon.mainhand with bow

#DO NOT modify the following functions unless you know what you're doing.
#-----

#-----