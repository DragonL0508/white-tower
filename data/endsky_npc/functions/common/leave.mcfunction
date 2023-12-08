execute as @e[limit=1,type=minecraft:marker,tag=npc.this] if data entity @s data.Dialogue.Extra.LeaveCommand run function endsky_npc:common/extra/leave_command
execute as @e[limit=1,type=minecraft:marker,tag=npc.this,scores={npc.trader=1}] run function endsky_npc:trader/save_trade with entity @s data.Id
function endsky_npc:common/end
