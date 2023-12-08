data modify entity @s Tags set from entity @e[limit=1,type=minecraft:interaction,tag=npc.this] Tags
ride @s mount @e[limit=1,tag=npc.figure,tag=npc.this]
$data modify entity @s data.Id.region set value "$(region)"
$data modify entity @s data.Id.npc set value "$(npc)"
$data modify entity @s data merge from storage npc:$(region) $(npc)
data modify entity @s data.Rotation set from entity @e[limit=1,tag=npc.figure,tag=npc.this] Rotation

execute if data entity @s data.Idle[] run function endsky_npc:idle/marker
