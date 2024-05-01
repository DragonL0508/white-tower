#function cb:schedule {ticks:25,selector:"@s",command:"function hostile:hostile/1_holy_bear/ability/1/fall"}
playsound minecraft:entity.polar_bear.warning master @a[team=intower] ~ ~ ~ 2 0.7 1
data merge entity @s {Motion:[0.0,1.0,0.0]}
tag @s add jump
function hostile:hostile/1_holy_bear/ability/look_target
function cb:schedule {ticks:20,selector:"@s",command:"function hostile:hostile/1_holy_bear/ability/look_target"}