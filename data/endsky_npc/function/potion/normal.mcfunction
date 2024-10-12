# 收音機亂加
$data modify entity @s data.PotionNormal set from storage npc:$(region) $(npc).PotionNormal
data modify entity @s data.PotionNormal[0].Extra.Hidden set value {}
data modify entity @s data.PotionNormal[0].Extra.Hidden set from entity @s data.Dialogue.Extra
data modify entity @s data.Dialogue set from entity @s data.PotionNormal[0]
data remove entity @s data.PotionNormal[0].Extra.Hidden
execute unless data entity @s data.PotionNormal[0].Once run data modify entity @s data.PotionNormal append from entity @s data.PotionNormal[0]
data remove entity @s data.PotionNormal[0]
$data modify storage npc:$(region) $(npc).PotionNormal set from entity @s data.PotionNormal
