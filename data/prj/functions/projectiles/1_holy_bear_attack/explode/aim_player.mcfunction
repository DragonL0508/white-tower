tag @s add prj.this

$execute as @a if data entity @s {UUID:$(AngryAt)} run tp @e[tag=prj.this,limit=1] ~ ~ ~ facing entity @s eyes

tag @s remove prj.this