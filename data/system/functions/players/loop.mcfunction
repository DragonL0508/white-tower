#offhand - 玩家副手物品是否正確
    execute unless data entity @s Inventory[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{offhand:1b}}] run function system:players/offhand/not_holding_item
    #持續更新
    loot replace entity @s weapon.offhand loot system:offhand

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
    #use
    execute if score @s carrot_on_a_stick.right_click matches 1.. if data entity @s SelectedItem{id:"minecraft:purple_dye",tag:{player.pots:1b,CustomModelData:1}} if score @s player.health = @s player.maxhp run function system:players/pots/use/hp_is_max
    execute if score @s carrot_on_a_stick.right_click matches 1.. if data entity @s SelectedItem{id:"minecraft:purple_dye",tag:{player.pots:1b,CustomModelData:2}} if score @s player.mana = @s player.maxmana run function system:players/pots/use/mana_is_max
    execute if score @s carrot_on_a_stick.right_click matches 1.. if data entity @s SelectedItem{id:"minecraft:purple_dye",tag:{player.pots:1b,CustomModelData:1}} unless score @s player.health = @s player.maxhp run function system:players/pots/use/heal
    execute if score @s carrot_on_a_stick.right_click matches 1.. if data entity @s SelectedItem{id:"minecraft:purple_dye",tag:{player.pots:1b,CustomModelData:2}} unless score @s player.mana = @s player.maxmana run function system:players/pots/use/mana

#actionbars
    execute unless score @s npc.state matches 1.. run function system:players/actionbars/loop

#attribute
    execute store result score @s player.maxhp run attribute @s generic.max_health get 1

#spell loop
    function spell:loop

#shield system
    execute if entity @s[tag=shield.enable] run function system:players/shield/animation with storage shield.animation.angle
    #recover
    execute if entity @s[tag=!shield.enable] if score @s player.shield < @s player.maxshield run function system:players/shield/recover

#get money
    execute if data entity @s Inventory[{id:"minecraft:gray_dye"}] run function system:players/money/getmoney

#leveling system
    execute if score @s player.exp >= @s level run function system:players/leveling/entry

#scorebaord reset - 重製玩家記分板
    scoreboard players reset @s carrot_on_a_stick.right_click
    scoreboard players reset @s sneak