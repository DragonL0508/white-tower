# 收音機亂加
advancement revoke @s only endsky_npc:potion/option_e
tag @s add npc.user
scoreboard players operation $temp npc.user = @s npc.player
execute as @e[tag=npc.tag] if score @s npc.user = $temp npc.user run tag @s add npc.this
execute store success score $temp npc.state run data modify entity @e[limit=1,type=minecraft:interaction,tag=npc.this,tag=npc.potion_e] interaction.player set from entity @s UUID
execute if score $temp npc.state matches 0 run function endsky_npc:potion/option/select_e
tag @e[tag=npc.this] remove npc.this
tag @s remove npc.user