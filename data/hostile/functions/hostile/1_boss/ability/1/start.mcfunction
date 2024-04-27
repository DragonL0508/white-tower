tag @s add ability_using

scoreboard players set @s ASSpeed -15
function hostile:entity_set_speed
data modify entity @s Motion[1] set value 0.5

function cb:schedule {ticks:25,selector:"@s",command:"function hostile:hostile/1_boss/ability/1/fly/start"}