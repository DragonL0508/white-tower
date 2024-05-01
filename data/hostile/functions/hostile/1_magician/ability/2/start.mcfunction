function hostile:hostile/1_magician/ability/2/draw_circle

tag @s add jump
scoreboard players set @s ASSpeed -10
function hostile:entity_set_speed
data modify entity @s Motion[1] set value 0.25
function cb:schedule {ticks:10,selector:"@s",command:"tag @s remove jump"}