data modify storage endsky_npc:utils input set value {}
data modify storage endsky_npc:utils input.command set from storage endsky_npc:utils Execute[0]
function endsky_npc:utils/execute with storage endsky_npc:utils input
data remove storage endsky_npc:utils Execute[0]
execute if data storage endsky_npc:utils Execute[] run function endsky_npc:utils/system_execute
