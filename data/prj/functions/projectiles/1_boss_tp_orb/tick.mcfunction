particle minecraft:end_rod ~ ~ ~ 0 0 0 0 0 force
particle minecraft:entity_effect ~ ~ ~ 2 2 1 1 0 force
execute anchored eyes facing entity @e[tag=hostile_1_boss,limit=1] eyes run tp @s ~ ~ ~ ~ ~

#player damage
execute positioned ~-0.05 ~-0.05 ~-0.05 as @a[gamemode=adventure,dx=0] positioned ~-0.9 ~-0.9 ~-0.9 if entity @s[dx=0] positioned ~0.95 ~0.95 ~0.95 run tag @s add this.target
execute as @a[tag=this.target] run damage @s 4 generic
tag @e remove this.target