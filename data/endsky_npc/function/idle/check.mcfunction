execute as @s[scores={npc.idle=0..1}] if score @s npc.timer < $gametime npc.utils run function endsky_npc:idle/start
execute as @s[scores={npc.idle=-1}] run function endsky_npc:idle/start
execute as @s[scores={npc.idle=0}] if score @s npc.timer = $gametime npc.utils run function endsky_npc:idle/show
execute as @s[scores={npc.idle=1}] if score @s npc.timer = $gametime npc.utils run function endsky_npc:idle/clear

schedule function endsky_npc:idle/check 20t
