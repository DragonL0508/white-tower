scoreboard players operation $temp npc.user = @s npc.user
execute as @e[tag=npc.tag] if score @s npc.user = $temp npc.user run tag @s add npc.this
execute as @a if score @s npc.player = $temp npc.user run tag @s add npc.user
execute anchored eyes facing entity @a[limit=1,tag=npc.user] eyes on passengers positioned as @s run tp @s[type=minecraft:marker] ~ ~ ~ ~ ~
execute anchored eyes on passengers rotated as @s[type=minecraft:marker] on vehicle positioned ^ ^ ^5 rotated as @s positioned ^ ^ ^20 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ ~
data modify entity @s[type=minecraft:armor_stand] Pose.Head set value [0.1f,0f,0f]
data modify entity @s[type=minecraft:armor_stand] Pose.Head[0] set from entity @s Rotation[1]
execute if entity @a[tag=npc.user,scores={npc.state=3}] positioned ~ ~1.4 ~ on passengers rotated as @s[type=minecraft:marker] rotated ~ 0 run function endsky_npc:trader/rotation
execute as @a[tag=npc.user] at @s run function endsky_npc:common/player
execute unless entity @e[type=minecraft:player,tag=npc.user] run function endsky_npc:common/no_user
tag @a[tag=npc.user] remove npc.user
tag @e[tag=npc.this] remove npc.this
