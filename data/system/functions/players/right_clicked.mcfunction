execute if data entity @s SelectedItem{id:"minecraft:purple_dye",tag:{player.pots:1b,CustomModelData:1}} if score @s player.health = @s player.maxhp run function system:players/pots/use/hp_is_max
execute if data entity @s SelectedItem{id:"minecraft:purple_dye",tag:{player.pots:1b,CustomModelData:2}} if score @s player.mana = @s player.maxmana run function system:players/pots/use/mana_is_max
execute if data entity @s SelectedItem{id:"minecraft:purple_dye",tag:{player.pots:1b,CustomModelData:1}} unless score @s player.health = @s player.maxhp run function system:players/pots/use/heal with storage this
execute if data entity @s SelectedItem{id:"minecraft:purple_dye",tag:{player.pots:1b,CustomModelData:2}} unless score @s player.mana = @s player.maxmana run function system:players/pots/use/mana with storage this