execute as @e[limit=1,type=minecraft:marker,tag=npc.this] if data entity @s data.Dialogue.Extra.LeaveCommand run function endsky_npc:common/extra/leave_command
function endsky_npc:common/end
