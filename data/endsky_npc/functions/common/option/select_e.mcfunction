execute store result score $temp npc.state if data entity @e[limit=1,type=minecraft:marker,tag=npc.this] data.Exit
execute if score @e[limit=1,type=minecraft:marker,tag=npc.this] npc.trader matches 1 run scoreboard players set $temp npc.state 2
execute if score $temp npc.state matches 0 run function endsky_npc:common/end
execute if score $temp npc.state matches 2 as @e[limit=1,type=minecraft:marker,tag=npc.this] run function endsky_npc:trader/back
execute unless score $temp npc.state matches 1 run return 0
execute as @e[limit=1,type=minecraft:marker,tag=npc.this] run function endsky_npc:common/option/select_e1
function endsky_npc:common/selected
