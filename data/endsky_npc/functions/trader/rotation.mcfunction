scoreboard players remove @e[type=minecraft:villager,scores={npc.reset=1..},tag=npc.this] npc.reset 1

execute as @e[type=#minecraft:display_entities,predicate=!endsky_npc:trader/riding,tag=npc.this,tag=npc.trader_b] run ride @s mount @e[limit=1,type=minecraft:villager,scores={npc.reset=0},tag=npc.this,tag=npc.trader_b]
tp @e[limit=1,type=minecraft:villager,tag=npc.this,tag=npc.trader_b] ^-0.75 ^-1.5 ^0.75
tp @e[limit=1,type=minecraft:interaction,tag=npc.this,tag=npc.trader_b] ^-0.75 ^-1.51 ^0.75

execute as @e[type=#minecraft:display_entities,predicate=!endsky_npc:trader/riding,tag=npc.this,tag=npc.trader_s] run ride @s mount @e[limit=1,type=minecraft:villager,scores={npc.reset=0},tag=npc.this,tag=npc.trader_s]
tp @e[limit=1,type=minecraft:villager,tag=npc.this,tag=npc.trader_s] ^0.75 ^-1.5 ^0.75
tp @e[limit=1,type=minecraft:interaction,tag=npc.this,tag=npc.trader_s] ^0.75 ^-1.51 ^0.75
