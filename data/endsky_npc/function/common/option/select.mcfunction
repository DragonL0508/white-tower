$execute if data entity @s data.Dialogue.Options[$(index)].Condition run function endsky_npc:common/option/condition/check {index:$(index)}
execute if score $condition npc.state matches 0 run return 0
$data modify entity @s data.Dialogue.Texts set from entity @s data.Dialogue.Options[$(index)].React
$execute store result entity @s data.Dialogue.End byte 1 run data get entity @s data.Dialogue.Options[$(index)].End
$data modify entity @s data.Dialogue.Options[$(index)].Extra.Hidden set value {}
$data modify entity @s data.Dialogue.Options[$(index)].Extra.Hidden set from entity @s data.Dialogue.Extra
$data modify entity @s data.Dialogue.Extra set from entity @s data.Dialogue.Options[$(index)].Extra
$data remove entity @s data.Dialogue.Options[$(index)].Extra.Hidden
