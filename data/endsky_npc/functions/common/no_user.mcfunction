scoreboard players set @a[tag=npc.user] npc.state 0
execute if data entity @e[limit=1,type=minecraft:marker,tag=npc.this] data.Dialogue.Extra.LeaveCommand run function endsky_npc:common/extra/leave_command_server
scoreboard players set @e[limit=1,type=minecraft:interaction,tag=npc.this,tag=!npc.option] npc.occupied 0
scoreboard players reset @e[tag=npc.this] npc.user
scoreboard players set @s npc.reset 20
data merge entity @e[limit=1,type=minecraft:text_display,tag=npc.name,tag=npc.this] {text:'{"color":"black","text":"","extra":[{"nbt":"CustomName","entity":"@e[limit=1,tag=npc.figure,tag=npc.this]","interpret":true}]}',start_interpolation:0,interpolation_duration:2,transformation:{translation:[0.0f,-0.255f,0.0f]}}
data merge entity @e[limit=1,type=minecraft:text_display,tag=npc.text,tag=npc.this] {text:'{"text":"","color":"black"}',transformation:{scale:[0.0f,0.0f,0.0f]}}
execute as @e[limit=1,type=minecraft:marker,tag=npc.this] run function endsky_npc:common/end_1
tp @e[type=minecraft:villager,tag=npc.option,tag=npc.this] ~ -100 ~
kill @e[tag=npc.option,tag=npc.this]
