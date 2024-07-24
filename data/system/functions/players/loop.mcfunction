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
    #get potion level
    scoreboard players set 1 command 1
    scoreboard players operation temp.potion_level temp = @s player.potion_level
    scoreboard players operation temp.potion_level temp -= 1 command
    execute store result storage this potion_level int 1 run scoreboard players get @s player.potion_level
    #use
    execute if score @s carrot_on_a_stick.right_click matches 1.. run function system:players/right_clicked

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

#meditation
    #store pitch data into scoreboard
    execute store result score @s player.pitch run data get entity @s Rotation[1]
    #checker
    execute if entity @s[team=player,tag=!in_meditation] if score @s player.pitch matches 80.. if score @s sneak matches 1.. run scoreboard players add @s meditation.timer 1
    execute unless score @s player.pitch matches 80.. run scoreboard players reset @s meditation.timer
    execute unless score @s sneak matches 1.. run scoreboard players reset @s meditation.timer
    
    execute if score @s meditation.timer matches 60.. run function system:players/meditation/start

#get money
    execute if data entity @s Inventory[{id:"minecraft:gray_dye"}] run function system:players/money/getmoney

#leveling system
    execute if score @s player.exp >= @s level run function system:players/leveling/entry

#player sprint control
    effect give @s hunger infinite 255 true
    execute if score @s[tag=!can_not_sprint] player.hunger matches ..7 run effect give @s saturation 1 0 true
    execute if score @s[tag=can_not_sprint] player.hunger matches ..5 run effect give @s saturation 1 0 true

#player dead event
    execute if score @s dead_event matches 1.. run function system:players/dead

#damage storage
    scoreboard players operation @s player.damage.total += @s Fan.FinalDamage
    scoreboard players operation @s player.damage2.total += @s Fan.FinalDamage2
    scoreboard players operation @s player.damage.round += @s Fan.FinalDamage
    scoreboard players operation @s player.damage2.round += @s Fan.FinalDamage2

#scoreboard reset - 重製玩家記分板
    data modify storage this potion_level set value []
    scoreboard players reset @s carrot_on_a_stick.right_click
    scoreboard players reset @s sneak
    scoreboard players reset @s dead_event
    scoreboard players reset @s Fan.FinalDamage
    scoreboard players reset @s Fan.FinalDamage2