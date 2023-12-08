data modify storage endsky_npc:trader Interpret.LootTable set value {buy:"empty",buyB:"empty",sell:"empty"}
data modify storage endsky_npc:trader Interpret.LootTable.buy set from storage endsky_npc:trader Interpret.Buy[0].buy.Name
data modify storage endsky_npc:trader Interpret.LootTable.buyB set from storage endsky_npc:trader Interpret.Buy[0].buyB.Name
data modify storage endsky_npc:trader Interpret.LootTable.sell set from storage endsky_npc:trader Interpret.Buy[0].sell.Name

function endsky_npc:trader/interpret/loot_table with storage endsky_npc:trader Interpret.LootTable

data modify storage endsky_npc:trader Interpreted.Buy append from storage endsky_npc:trader Interpret.Buy[0]
data remove storage endsky_npc:trader Interpret.Buy[0]

data remove storage endsky_npc:trader Interpreted.Buy[-1].buy.Name
execute unless data storage endsky_npc:trader Interpret.Item.buy{id:"minecraft:air"} run data modify storage endsky_npc:trader Interpreted.Buy[-1].buy.id set from storage endsky_npc:trader Interpret.Item.buy.id
execute if data storage endsky_npc:trader Interpret.Item.buy.tag run data modify storage endsky_npc:trader Interpreted.Buy[-1].buy.tag set from storage endsky_npc:trader Interpret.Item.buy.tag
execute unless data storage endsky_npc:trader Interpreted.Buy[-1].buy.Count run data modify storage endsky_npc:trader Interpreted.Buy[-1].buy.Count set value 1b

data remove storage endsky_npc:trader Interpreted.Buy[-1].buyB.Name
execute unless data storage endsky_npc:trader Interpret.Item.buyB{id:"minecraft:air"} run data modify storage endsky_npc:trader Interpreted.Buy[-1].buyB.id set from storage endsky_npc:trader Interpret.Item.buyB.id
execute if data storage endsky_npc:trader Interpret.Item.buyB.tag run data modify storage endsky_npc:trader Interpreted.Buy[-1].buyB.tag set from storage endsky_npc:trader Interpret.Item.buyB.tag

data remove storage endsky_npc:trader Interpreted.Buy[-1].sell.Name
execute unless data storage endsky_npc:trader Interpret.Item.sell{id:"minecraft:air"} run data modify storage endsky_npc:trader Interpreted.Buy[-1].sell.id set from storage endsky_npc:trader Interpret.Item.sell.id
execute if data storage endsky_npc:trader Interpret.Item.sell.tag run data modify storage endsky_npc:trader Interpreted.Buy[-1].sell.tag set from storage endsky_npc:trader Interpret.Item.sell.tag
execute unless data storage endsky_npc:trader Interpreted.Buy[-1].sell.Count run data modify storage endsky_npc:trader Interpreted.Buy[-1].sell.Count set value 1b

item replace entity @e[limit=1,type=minecraft:item_display,tag=npc.trader_interpret] container.0 with minecraft:air

execute if data storage endsky_npc:trader Interpret.Buy[0] run function endsky_npc:trader/interpret/buy
