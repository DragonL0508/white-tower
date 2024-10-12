# executed by marker
execute if score @s npc.count = @s npc.count run scoreboard players add @s npc.count 1
execute unless score @s npc.count = @s npc.count run scoreboard players set @s npc.count 0

function endsky_npc:common/playsound/main

data merge entity @e[type=minecraft:text_display,limit=1,tag=npc.text,tag=npc.this] {text:'{"color":"black","text":"","extra":[{"nbt":"data.Dialogue.Texts[0]","entity":"@e[limit=1,type=minecraft:marker,tag=npc.this]","interpret":true}]}',transformation:{scale:[1.0f,1.0f,1.0f]}}
data remove entity @s data.Dialogue.Texts[0]
execute as @a[tag=npc.user] run function endsky_npc:actionbar/state_1
