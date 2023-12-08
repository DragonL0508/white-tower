execute if score @s npc.quest matches 0 run function endsky_npc:trader/normal with entity @s data.Id
execute if score @s npc.quest matches 1 run function endsky_npc:trader/override
