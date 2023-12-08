execute store result score $temp npc.state if data entity @e[limit=1,type=minecraft:marker,tag=npc.this] data.Exit
execute if score $temp npc.state matches 0 run function endsky_npc:common/end
execute if score $temp npc.state matches 0 run return 0
execute as @e[limit=1,type=minecraft:marker,tag=npc.this] run function endsky_npc:trader/exit
function endsky_npc:trader/selected
