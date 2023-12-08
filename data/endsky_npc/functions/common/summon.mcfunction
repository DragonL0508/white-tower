scoreboard players set @e[type=minecraft:interaction,tag=npc.this] npc.occupied 0
data modify entity @e[limit=1,type=minecraft:text_display,tag=npc.this] text set value '{"color":"black","text":"","extra":[{"nbt":"CustomName","entity":"@e[limit=1,tag=npc.figure,tag=npc.this]","interpret":true}]}'

$execute unless data storage npc:$(region) $(npc) run function npc:$(region)/$(npc)/dialogues
$execute at @e[limit=1,tag=npc.figure,tag=npc.this] summon minecraft:marker run function endsky_npc:common/summon/marker {region:"$(region)",npc:"$(npc)"}
execute at @e[limit=1,type=minecraft:text_display,tag=npc.this] summon minecraft:text_display run function endsky_npc:common/summon/text_display

# 流水編號，方便得知哪些實體屬於同一個NPC
scoreboard players operation @e[tag=npc.this] npc.id = $npcCount npc.id
scoreboard players operation @e[limit=1,type=minecraft:marker,tag=npc.this] npc.split = $npcCount npc.id
scoreboard players operation @e[limit=1,type=minecraft:marker,tag=npc.this] npc.split %= $20 npc.const
scoreboard players add $npcCount npc.id 1
tag @e[tag=npc.this] remove npc.this
