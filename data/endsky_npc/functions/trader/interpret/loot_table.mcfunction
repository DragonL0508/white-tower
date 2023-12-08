$loot replace entity @e[limit=1,type=minecraft:item_display,tag=npc.trader_interpret] container.0 1 loot $(buy)
data modify storage endsky_npc:trader Interpret.Item.buy set from entity @e[limit=1,type=minecraft:item_display,tag=npc.trader_interpret] item
$loot replace entity @e[limit=1,type=minecraft:item_display,tag=npc.trader_interpret] container.0 1 loot $(buyB)
data modify storage endsky_npc:trader Interpret.Item.buyB set from entity @e[limit=1,type=minecraft:item_display,tag=npc.trader_interpret] item
$loot replace entity @e[limit=1,type=minecraft:item_display,tag=npc.trader_interpret] container.0 1 loot $(sell)
data modify storage endsky_npc:trader Interpret.Item.sell set from entity @e[limit=1,type=minecraft:item_display,tag=npc.trader_interpret] item
