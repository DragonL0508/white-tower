# 收音機亂加
scoreboard players set @s npc.state 4
scoreboard players set @s npc.option 0
scoreboard players set @s npc.look_option 0
data merge entity @e[type=minecraft:text_display,limit=1,tag=npc.text,tag=npc.this] {text:'{"color":"black","text":"選擇要增加的藥水"}',transformation:{scale:[1.0f,1.0f,1.0f]}}
execute as @e[limit=1,type=minecraft:marker,tag=npc.this] run function endsky_npc:potion/options_1
function endsky_npc:actionbar/state_2