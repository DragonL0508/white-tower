data modify entity @s data.Dialogue.Option set value 1b
execute store result score $count npc.option if data entity @s data.Dialogue.Options[]
execute if score $count npc.option matches 1 run function endsky_npc:common/option/summon_1
execute if score $count npc.option matches 2 run function endsky_npc:common/option/summon_2
execute if score $count npc.option matches 3 run function endsky_npc:common/option/summon_3
execute if score $count npc.option matches 4 run function endsky_npc:common/option/summon_4
scoreboard players operation @e[tag=npc.option,tag=npc.this] npc.user = @s npc.user
