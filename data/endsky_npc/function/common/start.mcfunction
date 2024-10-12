tag @s add npc.user
scoreboard players set @s npc.state 1
scoreboard players set @e[limit=1,type=minecraft:interaction,tag=npc.this] npc.occupied 1
scoreboard players set @e[limit=1,tag=npc.figure,tag=npc.this] npc.reset 0
scoreboard players operation @e[tag=npc.this] npc.user = @s npc.player
execute as @e[limit=1,type=minecraft:marker,tag=npc.this] run function endsky_npc:common/start_1 with entity @s data.Id
tag @a[tag=npc.user] remove npc.user
