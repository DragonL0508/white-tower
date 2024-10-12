scoreboard players set @s npc.option 3
scoreboard players set $condition npc.state 1
execute as @e[limit=1,type=minecraft:marker,tag=npc.this] run function endsky_npc:common/option/select {index:2}
execute if score $condition npc.state matches 1 run function endsky_npc:common/selected
