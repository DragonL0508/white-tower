#pots
    #wrong items
    execute unless data entity @s Inventory[{Slot:7b,tag:{player.pots:1b}}] if data entity @s Inventory[{Slot:7b}] run function system:players/pots/drop_item {slot:7}
    execute unless data entity @s Inventory[{Slot:8b,tag:{player.pots:1b}}] if data entity @s Inventory[{Slot:8b}] run function system:players/pots/drop_item {slot:8}
    #sync pots
    execute store result score @s Hpots.real run data get entity @s Inventory[{Slot:7b,id:"minecraft:purple_dye"}].Count
    execute store result score @s Mpots.real run data get entity @s Inventory[{Slot:8b,id:"minecraft:purple_dye"}].Count
    execute if score @s Hpots.counts matches 1.. unless score @s Hpots.real = @s Hpots.counts run function system:players/pots/sync/start
    execute if score @s Mpots.counts matches 1.. unless score @s Mpots.real = @s Mpots.counts run function system:players/pots/sync/start
    #glass bottle
    execute if score @s Hpots.counts matches 0 unless data entity @s Inventory[{Slot:7b,tag:{player.pots:1b},id:"minecraft:glass_bottle"}] run function system:players/pots/sync/start
    execute if score @s Mpots.counts matches 0 unless data entity @s Inventory[{Slot:8b,tag:{player.pots:1b},id:"minecraft:glass_bottle"}] run function system:players/pots/sync/start
    #get potion level
    scoreboard players set 1 command 1
    scoreboard players operation temp.potion_level temp = @s player.potion_level
    scoreboard players operation temp.potion_level temp -= 1 command
    execute store result storage this potion_level int 1 run scoreboard players get @s player.potion_level
    #use
    execute if score @s carrot_on_a_stick.right_click matches 1.. run function system:players/right_clicked