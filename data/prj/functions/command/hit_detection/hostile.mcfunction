execute positioned ~-0.05 ~-0.05 ~-0.05 as @e[team=hostile,dx=0] positioned ~-0.9 ~-0.9 ~-0.9 if entity @s[dx=0] positioned ~0.95 ~0.95 ~0.95 run say hit

$execute positioned ~-0.05 ~-0.05 ~-0.05 as @e[team=hostile,dx=0] positioned ~-0.9 ~-0.9 ~-0.9 if entity @s[dx=0] positioned ~0.95 ~0.95 ~0.95 as @e[sort=nearest,limit=1,tag=prj.$(id)] run function prj:projectiles/$(id)/on_hit_target