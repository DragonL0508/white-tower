tag @s add magician_me
playsound entity.evoker.prepare_summon master @a[team=intower] ~ ~ ~ 2 2 1
execute positioned ~ ~4 ~ run function hostile:summon/1_magician_vex
tag @s remove magician_me