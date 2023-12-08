execute unless data storage endsky_npc:common temp.min run data modify storage endsky_npc:common temp.min set value 1
function endsky_npc:utils/get_uniform with storage endsky_npc:common temp
data modify storage endsky_npc:common temp set from storage endsky_npc:utils output
