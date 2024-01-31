# 收音機亂加
scoreboard players set @s npc.potion 1
function endsky_npc:potion/get_override with entity @s data.Id
data remove entity @s data.Dialogue.Quest
data remove entity @s data.Dialogue.Option
execute positioned ~ ~1.4 ~ run function endsky_npc:potion/option/summon_h
execute positioned ~ ~1.4 ~ run function endsky_npc:potion/option/summon_m
execute if score @s npc.quest matches 0 if data entity @s data.PotionNormal[] positioned ~ ~1.1 ~ run function endsky_npc:potion/option/summon_d
execute if score @s npc.quest matches 1 positioned ~ ~1.1 ~ run function endsky_npc:potion/option/summon_d
execute positioned ~ ~0.8 ~ run function endsky_npc:potion/option/summon_e
scoreboard players operation @e[tag=npc.option,tag=npc.this] npc.user = @s npc.user
