# executed by marker
execute unless data entity @s data.Dialogue.Texts[] run function endsky_npc:common/empty
execute if data entity @s data.Dialogue.Texts[] run function endsky_npc:common/display_text
