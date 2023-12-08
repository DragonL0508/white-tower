summon minecraft:villager ~ -64 ~ {Tags:["npc.tag","npc.option","npc.trader_b","npc.this"],Team:"npc.trader",CustomName:'{"text":"購入"}',NoAI:1b,Invulnerable:1b,Silent:1b,active_effects:[{id:"minecraft:resistance",duration:-1,amplifier:4b,show_particles:0b},{id:"minecraft:invisibility",duration:-1,amplifier:0b,show_particles:0b}],VillagerData:{profession:"minecraft:librarian",level:6}}
data modify entity @e[limit=1,type=minecraft:villager,tag=npc.trader_b,tag=npc.this] Offers.Recipes set from entity @s data.Buy
data modify entity @e[limit=1,type=minecraft:villager,tag=npc.trader_b,tag=npc.this] Offers.Recipes[].rewardExp set value 0b
execute as @e[limit=1,type=minecraft:villager,tag=npc.trader_b,tag=npc.this] if data entity @s Offers.Recipes[{maxUses:2147483647}] run data modify entity @s Offers.Recipes[{maxUses:2147483647}].uses set value 0
scoreboard players set @e[limit=1,type=minecraft:villager,tag=npc.trader_b,tag=npc.this] npc.reset 6

summon minecraft:interaction ^-0.75 ^-1.51 ^0.75 {Tags:["npc.tag","npc.option","npc.blocker","npc.trader_b","npc.this"],width:0.625f,height:1.26f}
summon minecraft:text_display ^-0.75 ^0.45 ^0.75 {Tags:["npc.tag","npc.option","npc.trader_b","npc.this"],text:'{"color":"black","text":"購入"}',billboard:"vertical",background:-1073741825,transformation:{translation:[0.0f,-0.7375f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.8f,0.8f,0.8f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}
summon minecraft:item_display ^-0.75 ^0.45 ^0.75 {Tags:["npc.tag","npc.option","npc.trader_b","npc.this"],item:{id:"minecraft:wheat",Count:1b},billboard:"vertical",transformation:{translation:[0.0f,-0.2375f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.5f,0.5f,0.5f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}
