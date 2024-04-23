playsound minecraft:entity.player.attack.sweep master @a[team=intower] ~ ~ ~ 2 0 1
playsound minecraft:entity.illusioner.cast_spell master @a[team=intower] ~ ~ ~ 2 0 1
particle sweep_attack ~ ~1 ~ 0 0 0 0 1 force

tp @s @e[tag=hostile_1_miniboss,sort=nearest,limit=1]

execute as @e[team=hostile_1_miniboss,sort=nearest,limit=1] on target run tag @s add prj.target.this

tp @s ~ ~0.25 ~ facing entity @p[tag=prj.target.this] eyes
execute at @s run tp @s ~ ~ ~ ~ 0

tag @a remove prj.target.this