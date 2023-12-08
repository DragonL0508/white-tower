data modify entity @s data.Dialogue.Sub set value 1b
execute if data entity @s data.Dialogue.Extra.StartCommand run function endsky_npc:common/extra/start_command
function endsky_npc:common/display_text
