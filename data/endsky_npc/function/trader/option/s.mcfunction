advancement revoke @s only endsky_npc:trader/option_s
tag @s add npc.user
scoreboard players operation $temp npc.user = @s npc.player
execute as @e[tag=npc.tag] if score @s npc.user = $temp npc.user run tag @s add npc.this
scoreboard players set $temp npc.state 0
execute unless predicate endsky_npc:look_this as @e[type=minecraft:villager,tag=npc.trader_s,distance=0..6] run function endsky_npc:trader/option/check
execute unless predicate endsky_npc:look_this if score $temp npc.state matches 0 as @e[type=minecraft:villager,tag=npc.trader_s,distance=0..6] run function endsky_npc:trader/option/close
tag @e[tag=npc.this] remove npc.this
tag @s remove npc.user
