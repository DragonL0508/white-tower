execute unless entity @e[tag=npc.trader_interpret] at @s run summon minecraft:item_display ~ ~ ~ {Tags:["npc.trader_interpret"],transformation:[0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f]}

data modify entity @s data.Buy[].interpret set value 1b
execute if data entity @s data.Buy[{interpreted:1b}] run data modify entity @s data.Buy[{interpreted:1b}].interpret set value 0b
data modify storage endsky_npc:trader Interpret.Buy set value []
data modify storage endsky_npc:trader Interpret.Buy append from entity @s data.Buy[{interpret:1b}]
data remove entity @s data.Buy[{interpret:1b}]
data remove entity @s data.Buy[].interpret
data remove storage endsky_npc:trader Interpret.Buy[].interpret

data modify storage endsky_npc:trader Interpreted.Buy set value []
execute if data storage endsky_npc:trader Interpret.Buy[] run function endsky_npc:trader/interpret/buy

data modify entity @s data.Sell[].interpret set value 1b
execute if data entity @s data.Sell[{interpreted:1b}] run data modify entity @s data.Sell[{interpreted:1b}].interpret set value 0b
data modify storage endsky_npc:trader Interpret.Sell set value []
data modify storage endsky_npc:trader Interpret.Sell append from entity @s data.Sell[{interpret:1b}]
data remove entity @s data.Sell[{interpret:1b}]
data remove entity @s data.Sell[].interpret
data remove storage endsky_npc:trader Interpret.Sell[].interpret

data modify storage endsky_npc:trader Interpreted.Sell set value []
execute if data storage endsky_npc:trader Interpret.Sell[] run function endsky_npc:trader/interpret/sell

data modify entity @s data.Buy append from storage endsky_npc:trader Interpreted.Buy[]
data modify entity @s data.Buy[].interpreted set value 1b
data modify entity @s data.Sell append from storage endsky_npc:trader Interpreted.Sell[]
data modify entity @s data.Sell[].interpreted set value 1b
kill @e[tag=npc.trader_interpret]

$data modify storage npc:$(region) $(npc).Buy set from entity @s data.Buy
$data modify storage npc:$(region) $(npc).Sell set from entity @s data.Sell
