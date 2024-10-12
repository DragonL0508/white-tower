#what do you want to execute on level start ->
execute as @e[type=marker,tag=mob_spawn_spot] at @s run function hostile:summon/1_warrior
execute as @e[type=marker,tag=mob_spawn_spot,sort=random,limit=1] at @s run summon ocelot ~ ~1 ~ {Silent:1b,Tags:["key_cat"],Passengers:[{id:"minecraft:item",PickupDelay:999999,Tags:["key"],Item:{id:"minecraft:cyan_dye",Count:1b,tag:{display:{Name:'{"text":"鑰匙","color":"gold","bold":true,"italic":false}'},key:1b}}}],ActiveEffects:[{Id:14,Amplifier:1b,Duration:999999,ShowParticles:0b}]}

effect give @e[tag=key_cat] invisibility infinite 0 true