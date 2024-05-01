#particle
particle minecraft:end_rod ^ ^ ^0.9 0 0.5 0 999999 0
particle minecraft:end_rod ^0.2 ^ ^0.9 0 0.5 0 999999 0
particle minecraft:end_rod ^-0.2 ^ ^0.9 0 0.5 0 999999 0
particle minecraft:end_rod ^0.4 ^ ^0.8 0 0.5 0 999999 0
particle minecraft:end_rod ^-0.4 ^ ^0.8 0 0.5 0 999999 0
particle minecraft:end_rod ^0.6 ^ ^0.7 0 0.5 0 999999 0
particle minecraft:end_rod ^-0.6 ^ ^0.7 0 0.5 0 999999 0
particle minecraft:end_rod ^0.7 ^ ^0.6 0 0.5 0 999999 0
particle minecraft:end_rod ^-0.7 ^ ^0.6 0 0.5 0 999999 0

particle minecraft:instant_effect ^ ^ ^0.9 0 0 0 0 1
particle minecraft:instant_effect ^0.2 ^ ^0.9 0 0 0 0 1
particle minecraft:instant_effect ^-0.2 ^ ^0.9 0 0 0 0 1
particle minecraft:instant_effect ^0.4 ^ ^0.8 0 0 0 0 1
particle minecraft:instant_effect ^-0.4 ^ ^0.8 0 0 0 0 1
particle minecraft:instant_effect ^0.6 ^ ^0.7 0 0 0 0 1
particle minecraft:instant_effect ^-0.6 ^ ^0.7 0 0 0 0 1
particle minecraft:instant_effect ^0.7 ^ ^0.6 0 0 0 0 1
particle minecraft:instant_effect ^-0.7 ^ ^0.6 0 0 0 0 1

#bounce
execute unless block ^ ^ ^0.5 #system:nothing run function prj:projectiles/1_miniboss_sweep/bounce/trigger