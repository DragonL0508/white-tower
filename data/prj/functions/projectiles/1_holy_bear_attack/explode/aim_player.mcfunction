tag @s add prj.this

$execute as @a if data entity @s {UUID:$(AngryAt)} run tp @e[tag=prj.this] ~ ~ ~ facing entity DragonL eyes

tag @s remove prj.this