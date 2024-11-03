#offhand - 玩家副手物品是否正確
    execute unless data entity @s Inventory[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{offhand:1b}}] run function system:players/offhand/not_holding_item
    #持續更新
    loot replace entity @s weapon.offhand loot system:offhand

#pots
    execute if entity @s[tag=!potion_bypass] run function system:players/loop_potion

#actionbars
    execute unless score @s npc.state matches 1.. run function system:players/actionbars/loop

#attribute
    execute store result score @s player.maxhp run attribute @s generic.max_health get 1

#spell loop
    function spell:loop

#get money
    execute if data entity @s Inventory[{id:"minecraft:gray_dye"}] run function system:players/money/getmoney

#leveling system
    execute if score @s player.exp >= @s level run function system:players/leveling/entry

#player sprint control
    effect give @s hunger infinite 255 true
    execute if score @s[tag=!can_not_sprint] player.hunger matches ..7 run effect give @s saturation 1 0 true
    execute if score @s[tag=can_not_sprint] player.hunger matches ..5 run effect give @s saturation 1 0 true

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