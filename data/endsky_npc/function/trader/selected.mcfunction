scoreboard players set @s npc.state 1
execute as @e[limit=1,type=minecraft:marker,tag=npc.this] run function endsky_npc:trader/save_trade with entity @s data.Id
tp @e[type=minecraft:villager,tag=npc.option,tag=npc.this] ~ -100 ~
kill @e[tag=npc.option,tag=npc.this]
execute as @e[limit=1,type=minecraft:marker,tag=npc.this] run function endsky_npc:trader/selected_1
