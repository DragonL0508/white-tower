$execute as @a if data entity @s {UUID:$(AngryAt)} run tag @s add prj.target.this

say I aimed @p[tag=prj.target.this]
tp @s ~ ~0.1 ~ facing entity @p[tag=prj.target.this] feet

tag @a remove prj.target.this