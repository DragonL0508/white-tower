execute store result score money.amount temp run data get entity @s Inventory[{id:"minecraft:gray_dye"}].Count
execute if score money.amount temp matches 1.. run clear @s gray_dye 1
execute if score money.amount temp matches 1.. run scoreboard players add money.get temp 1
execute if score money.amount temp matches 1.. run scoreboard players remove money.amount temp 1

#if loop
execute if score money.amount temp matches 0 run function system:players/money/givemoney
execute if score money.amount temp matches 1.. run function system:players/money/getmoney