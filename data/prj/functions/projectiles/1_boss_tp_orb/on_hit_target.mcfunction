playsound minecraft:entity.illusioner.prepare_mirror master @a[team=intower] ~ ~ ~ 2 2 1
particle minecraft:end_rod ~ ~ ~ 0 0 0 0.5 200 force
particle minecraft:flash ~ ~ ~ 0 0 0 1 2 force
damage @a[team=intower,gamemode=adventure,distance=..4] 6 generic


#---------------------------
kill @s
#---------------------------