execute if data entity @s data{NormalRandom:1b} run function endsky_npc:common/random/generate
data modify entity @s data.Dialogue set from entity @s data.Normal[0]
execute unless data entity @s data.Normal[0].Once run data modify entity @s data.Normal append from entity @s data.Normal[0]
data remove entity @s data.Normal[0]
