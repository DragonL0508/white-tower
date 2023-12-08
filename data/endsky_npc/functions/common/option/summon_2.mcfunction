execute positioned ~ ~1.4 ~ run function endsky_npc:common/option/summon_a
execute positioned ~ ~1.1 ~ run function endsky_npc:common/option/summon_b
execute unless data entity @s data.Dialogue{Quest:1b} unless data entity @s data.Dialogue{NoExit:1b} positioned ~ ~0.8 ~ run function endsky_npc:common/option/summon_e
