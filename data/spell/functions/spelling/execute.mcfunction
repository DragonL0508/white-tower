execute if score @s spell.what_spell matches 0 run function spell:spelling/success/normal_attack/start

#mana cose
scoreboard players operation @s player.mana -= @s spell.this.manacost

#reset
tag @s remove spelling
scoreboard players set @s spell.button 1
scoreboard players reset @s spell.clicked.1
scoreboard players reset @s spell.clicked.2
scoreboard players reset @s spell.clicked.3
scoreboard players reset @s spell.timer
scoreboard players set @s actionbar_type 1

#attribute reset
attribute @s generic.movement_speed base set 0.1

#title reset
title @s clear