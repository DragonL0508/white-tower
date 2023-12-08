execute as @s[scores={npc.state=2}] run function endsky_npc:common/selecting
execute as @s[scores={npc.state=3}] run function endsky_npc:trader/selecting
execute unless entity @e[type=minecraft:interaction,tag=npc.this,distance=..6] run function endsky_npc:common/leave
