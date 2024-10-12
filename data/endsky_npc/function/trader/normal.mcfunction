$data modify entity @s data.TraderNormal set from storage npc:$(region) $(npc).TraderNormal
execute if data entity @s data{TraderNormalRandom:1b} run function endsky_npc:trader/random/generate
data modify entity @s data.TraderNormal[0].Extra.Hidden set value {}
data modify entity @s data.TraderNormal[0].Extra.Hidden set from entity @s data.Dialogue.Extra
data modify entity @s data.Dialogue set from entity @s data.TraderNormal[0]
data remove entity @s data.TraderNormal[0].Extra.Hidden
execute unless data entity @s data.TraderNormal[0].Once run data modify entity @s data.TraderNormal append from entity @s data.TraderNormal[0]
data remove entity @s data.TraderNormal[0]
$data modify storage npc:$(region) $(npc).TraderNormal set from entity @s data.TraderNormal
