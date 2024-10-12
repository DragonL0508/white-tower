scoreboard players set $refresh npc.look_option 0
execute as @e[limit=1,type=minecraft:marker,tag=npc.this] if data entity @s data.Dialogue.Options[0].Condition run function endsky_npc:common/option/condition/update_a
execute as @e[limit=1,type=minecraft:marker,tag=npc.this] if data entity @s data.Dialogue.Options[1].Condition run function endsky_npc:common/option/condition/update_b
execute as @e[limit=1,type=minecraft:marker,tag=npc.this] if data entity @s data.Dialogue.Options[2].Condition run function endsky_npc:common/option/condition/update_c
execute as @e[limit=1,type=minecraft:marker,tag=npc.this] if data entity @s data.Dialogue.Options[3].Condition run function endsky_npc:common/option/condition/update_d
execute if score $refresh npc.look_option matches 1 run scoreboard players set @s npc.look_option 0
