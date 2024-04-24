#The function will be triggered upon summoning.
tag @s add group_sweep

playsound minecraft:entity.illusioner.mirror_move master @a[team=intower] ~ ~ ~ 2 0 1
playsound minecraft:item.trident.return master @a[team=intower] ~ ~ ~ 2 0 1
particle flash ~ ~ ~ 1 0.5 1 1 500 force
particle minecraft:end_rod ~ ~1 ~ 0 0.5 0 0.5 550 force