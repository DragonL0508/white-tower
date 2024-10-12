scoreboard players operation $system npc.id = @s npc.id
execute as @e[tag=npc.tag] if score @s npc.id = $system npc.id run tag @s add npc.this
kill @e[type=minecraft:text_display,tag=npc.idle,tag=npc.this]
data modify storage endsky_npc:common temp set from entity @s data.Idle[0].Rest
execute if data storage endsky_npc:common temp.max run function endsky_npc:idle/random
execute store result score $rest npc.timer run data get storage endsky_npc:common temp
scoreboard players operation $rest npc.timer *= $20 npc.const
scoreboard players operation @s npc.timer = $gametime npc.utils
scoreboard players operation @s npc.timer += $rest npc.timer
scoreboard players set @s npc.idle 0
data modify entity @s data.Idle append from entity @s data.Idle[0]
data remove entity @s data.Idle[0]
data merge entity @e[limit=1,type=minecraft:text_display,tag=npc.name,tag=npc.this] {text:'{"color":"black","text":"","extra":[{"nbt":"CustomName","entity":"@e[limit=1,tag=npc.figure,tag=npc.this]","interpret":true}]}',start_interpolation:0,interpolation_duration:2,transformation:{translation:[0.0f,-0.255f,0.0f]}}
data merge entity @e[limit=1,type=minecraft:text_display,tag=npc.text,tag=npc.this] {text:'{"color":"black","text":""}',transformation:{scale:[0.0f,0.0f,0.0f]}}
tag @e[tag=npc.this] remove npc.this
