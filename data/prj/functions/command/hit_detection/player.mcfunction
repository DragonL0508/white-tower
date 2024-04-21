execute positioned ~-0.05 ~-0.05 ~-0.05 as @a[gamemode=adventure,dx=0] positioned ~-0.9 ~-0.9 ~-0.9 if entity @s[dx=0] positioned ~0.95 ~0.95 ~0.95 run tag @s add this.target

$execute positioned ~-0.05 ~-0.05 ~-0.05 as @a[gamemode=adventure,dx=0] positioned ~-0.9 ~-0.9 ~-0.9 if entity @s[dx=0] positioned ~0.95 ~0.95 ~0.95 as @e[sort=nearest,limit=1,tag=prj.$(id)] run function prj:projectiles/$(id)/on_hit_target

#damage
$execute as @a[tag=this.target] run damage @s $(damage) generic by @e[tag=prj,sort=nearest,limit=1]
execute as @a[tag=this.target] run say hit
tag @e remove this.target