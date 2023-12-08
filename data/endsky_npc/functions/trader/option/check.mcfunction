tag @e[tag=npc.this] remove npc.this
tag @s add npc.this
execute if entity @a[limit=1,tag=npc.user,predicate=endsky_npc:look_this] run function endsky_npc:trader/option/close