function prj:summon/1_holy_bear_attack

playsound custom:impact master @a[distance=..20,team=intower] ~ ~ ~ 0.5 1 1
playsound minecraft:entity.warden.sonic_boom master @a[distance=..20,team=intower] ~ ~ ~ 0.5 1 1

particle minecraft:end_rod ~ ~ ~ 0 0 0 0.2 50 force
particle minecraft:flash ~ ~ ~ 0 0 0 1 2 force