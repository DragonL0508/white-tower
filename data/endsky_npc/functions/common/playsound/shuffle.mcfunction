$execute store result score $index npc.state run random value 1..$(pool_size)
scoreboard players remove $index npc.state 1
execute store result storage endsky_npc:common Sound.index int 1 run scoreboard players get $index npc.state
function endsky_npc:common/playsound/pick with storage endsky_npc:common Sound
