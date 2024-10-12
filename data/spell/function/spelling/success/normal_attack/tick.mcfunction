#particles
particle effect ~ ~ ~ 0 0 0 0.005 1 force
particle instant_effect ~ ~ ~ 0 0 0 0.025 1 force

#move
tp @s ^ ^ ^0.5

#hit entity
execute positioned ~-0.05 ~-0.05 ~-0.05 as @e[team=hostile,dx=0] positioned ~-0.9 ~-0.9 ~-0.9 if entity @s[dx=0] positioned ~0.95 ~0.95 ~0.95 as @e[sort=nearest,limit=1] run function spell:spelling/success/normal_attack/explode

#hit block
execute unless block ^ ^ ^0.1 #system:nothing run function spell:spelling/success/normal_attack/explode