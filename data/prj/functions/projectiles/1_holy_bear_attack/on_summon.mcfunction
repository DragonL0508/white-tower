tp @s @e[team=hostile_1_holy_bear,sort=nearest,limit=1]

execute as @e[team=hostile_1_holy_bear,sort=nearest,limit=1] on target run tag @s add prj.target.this

tp @s ~ ~0.25 ~ facing entity @p[tag=prj.target.this] eyes
execute at @s run tp @s ~ ~ ~ ~ 0

tag @a remove prj.target.this