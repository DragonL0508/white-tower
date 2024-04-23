$execute as @a if data entity @s {UUID:$(AngryAt)} run tag @s add prj.target.this

tp @s ~ ~0.1 ~ facing entity @p[tag=prj.target.this] eyes
execute at @s run tp @s ~ ~ ~ ~ 0

tag @a remove prj.target.this