advancement revoke @s only endsky_npc:common/option_d
tag @s add npc.user
scoreboard players operation $temp npc.user = @s npc.player
execute as @e[tag=npc.tag] if score @s npc.user = $temp npc.user run tag @s add npc.this
execute store success score $temp npc.state run data modify entity @e[limit=1,type=minecraft:interaction,tag=npc.this,tag=npc.option_d] interaction.player set from entity @s UUID
execute if score $temp npc.state matches 0 run function endsky_npc:common/option/select_d
tag @e[tag=npc.this] remove npc.this
tag @s remove npc.user
