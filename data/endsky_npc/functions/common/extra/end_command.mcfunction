data modify storage endsky_npc:utils input set value {}
data modify storage endsky_npc:utils input.command set from entity @s data.Dialogue.Extra.EndCommand
execute as @a[limit=1,tag=npc.user] run function endsky_npc:utils/execute with storage endsky_npc:utils input
