# executed by marker
scoreboard players reset @s npc.count
execute if data entity @s data.Dialogue{End:1b} run scoreboard players set $next npc.state 0
execute if score @s npc.trader matches 1 if data entity @s data.Dialogue{Option:1b} if data entity @s data.Dialogue{End:1b} run scoreboard players set $next npc.state 3
execute if score $next npc.state matches 1 if data entity @s data.Dialogue.Options[] run scoreboard players set $next npc.state 2
execute if score $next npc.state matches 1 if score @s npc.trader matches 1 run scoreboard players set $next npc.state 3
execute if score $next npc.state matches 1 if score @s npc.trader matches 0 run scoreboard players set $next npc.state 0
execute if score $next npc.state matches 0 if data entity @s data.Dialogue.Extra.EndCommand run function endsky_npc:common/extra/end_command
execute if score $next npc.state matches 2..3 if data entity @s data.Dialogue{Sub:1b} if data entity @s data.Dialogue.Extra.EndCommand run function endsky_npc:common/extra/end_command
execute if data entity @s data.Dialogue.Extra.Hidden run data modify entity @s data.Dialogue.Extra set from entity @s data.Dialogue.Extra.Hidden
execute if score $next npc.state matches 0 if data entity @s data.Dialogue{Sub:1b} if data entity @s data.Dialogue.Extra.EndCommand run function endsky_npc:common/extra/end_command
