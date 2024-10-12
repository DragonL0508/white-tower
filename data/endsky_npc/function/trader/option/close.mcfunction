scoreboard players set $temp npc.state 1
scoreboard players operation $temp npc.user = @s npc.user
execute as @e[tag=npc.tag] if score @s npc.user = $temp npc.user run tag @s add npc.temp
summon minecraft:villager ~ -64 ~ {Tags:["npc.new"],Team:"npc.trader",NoAI:1b,Invulnerable:1b,Silent:1b,active_effects:[{id:"minecraft:resistance",duration:-1,amplifier:4b,show_particles:0b},{id:"minecraft:invisibility",duration:-1,amplifier:0b,show_particles:0b}],VillagerData:{profession:"minecraft:librarian",level:6}}
scoreboard players operation @e[limit=1,type=minecraft:villager,tag=npc.new] npc.user = @s npc.user
scoreboard players set @e[limit=1,type=minecraft:villager,tag=npc.new] npc.reset 4
data modify entity @e[limit=1,type=minecraft:villager,tag=npc.new] CustomName set from entity @s CustomName
data modify entity @e[limit=1,type=minecraft:villager,tag=npc.new] Offers set from entity @s Offers
data modify entity @e[limit=1,type=minecraft:villager,tag=npc.new] Tags set from entity @s Tags
tag @e[tag=npc.temp] remove npc.temp
execute on passengers run ride @s dismount
tp @s ~ ~-100 ~
kill @s
