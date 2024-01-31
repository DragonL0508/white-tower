# 收音機亂加
scoreboard players set @s npc.look_option 2
data modify entity @e[limit=1,type=minecraft:item_display,tag=npc.potion_h,tag=npc.this] Glowing set value 0b
data modify entity @e[limit=1,type=minecraft:item_display,tag=npc.potion_m,tag=npc.this] Glowing set value 1b
data modify entity @e[limit=1,type=minecraft:text_display,tag=npc.potion_h,tag=npc.this] text set value '{"color":"black","text":"生命藥水"}'
data modify entity @e[limit=1,type=minecraft:text_display,tag=npc.potion_m,tag=npc.this] text set value '{"color":"black","text":"> 魔力藥水"}'
data modify entity @e[limit=1,type=minecraft:text_display,tag=npc.potion_d,tag=npc.this] text set value '{"color":"black","text":"交談"}'
data modify entity @e[limit=1,type=minecraft:text_display,tag=npc.potion_e,tag=npc.this] text set value '{"color":"black","text":"離開"}'
