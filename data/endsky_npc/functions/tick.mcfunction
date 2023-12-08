execute store result score $gametime npc.utils run time query gametime
execute store result score $playerOnline npc.utils if entity @a

execute as @e[tag=npc.figure,scores={npc.user=0..}] at @s run function endsky_npc:common/figure
execute as @e[tag=npc.figure,scores={npc.reset=1..}] at @s run function endsky_npc:common/reset

scoreboard players operation $current npc.split = $gametime npc.utils
scoreboard players operation $current npc.split %= $20 npc.const
execute as @e[type=minecraft:marker,tag=npc.idle,predicate=endsky_npc:idle/split_match] run function endsky_npc:idle/check

execute if data storage endsky_npc:utils Execute[] run function endsky_npc:utils/system_execute

# 此行僅作為debug用，可刪
scoreboard players operation $system npc.timer = $gametime npc.utils
