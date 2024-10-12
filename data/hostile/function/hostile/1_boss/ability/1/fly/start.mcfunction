data merge entity @s {NoAI:1b}
playsound minecraft:entity.illusioner.cast_spell master @a[team=intower] ~ ~ ~ 2 1 1
tag @s add flying

function cb:schedule {ticks:20,selector:"@s",command:"function hostile:hostile/1_boss/ability/1/fly/stop"}