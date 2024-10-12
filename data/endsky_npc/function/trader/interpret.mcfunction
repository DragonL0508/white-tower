scoreboard players set $temp npc.state 1
execute unless data entity @s data.Buy[].buy.Name unless data entity @s data.Buy[].sell.Name unless data entity @s data.Sell[].buy.Name unless data entity @s data.Sell[].sell.Name run scoreboard players set $temp npc.state 0
execute if score $temp npc.state matches 1 run function endsky_npc:trader/interpret/main with entity @s data.Id
