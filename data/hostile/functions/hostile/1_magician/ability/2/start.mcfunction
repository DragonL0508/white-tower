function hostile:hostile/1_magician/ability/2/draw_circle

tag @s add jump
scoreboard players set @s ASSpeed -10
data merge entity @s {Motion:[0.0,0.35,0.0]}
function hostile:entity_set_speed
function cb:schedule {ticks:10,selector:"@s",command:"tag @s remove jump"}