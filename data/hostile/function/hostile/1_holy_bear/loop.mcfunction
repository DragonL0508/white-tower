#make mob execute these per tick

execute if entity @s[tag=jump] if data entity @s {OnGround:1b} run function hostile:hostile/1_holy_bear/ability/1/fall

#DO NOT modify the following functions unless you know what you're doing.
#-----

#-----