data modify entity @s data.Dialogue.End set value 1b
kill @e[tag=npc.option,tag=npc.this]
function endsky_npc:common/empty
execute at @e[limit=1,tag=npc.figure,tag=npc.this] rotated ~ 0 as @a[limit=1,tag=npc.user] run function endsky_npc:trader/options
