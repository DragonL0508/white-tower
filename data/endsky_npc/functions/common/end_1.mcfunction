data modify entity @s Rotation set from entity @s data.Rotation
data remove entity @s data.Dialogue
execute if data entity @s data.Idle[] run function endsky_npc:idle/marker
