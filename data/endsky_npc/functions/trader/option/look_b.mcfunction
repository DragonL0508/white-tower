scoreboard players set @s npc.look_option 1
data modify entity @e[limit=1,type=minecraft:item_display,tag=npc.trader_b,tag=npc.this] Glowing set value 1b
data modify entity @e[limit=1,type=minecraft:item_display,tag=npc.trader_s,tag=npc.this] Glowing set value 0b
data modify entity @e[limit=1,type=minecraft:text_display,tag=npc.trader_b,tag=npc.this] text set value '{"color":"black","text":"> 購入"}'
data modify entity @e[limit=1,type=minecraft:text_display,tag=npc.trader_s,tag=npc.this] text set value '{"color":"black","text":"售出"}'
data modify entity @e[limit=1,type=minecraft:text_display,tag=npc.trader_d,tag=npc.this] text set value '{"color":"black","text":"交談"}'
data modify entity @e[limit=1,type=minecraft:text_display,tag=npc.trader_e,tag=npc.this] text set value '{"color":"black","text":"離開"}'
