# executed by marker
data modify entity @s data.Normal append from entity @s data.Normal[0]
data remove entity @s data.Normal[0]
scoreboard players remove $index npc.count 1
execute if score $index npc.count matches 1.. run function endsky_npc:common/random/roll
