data remove entity @s data.Override
data modify entity @s data.Temp set from entity @s data.Dialogue
data remove entity @s data.Dialogue
$function npc:$(region)/$(npc)/override
execute store success score @s npc.quest if data entity @s data.Dialogue
data modify entity @s data.Override set from entity @s data.Dialogue
data modify entity @s data.Dialogue set from entity @s data.Temp
data remove entity @s data.Temp
