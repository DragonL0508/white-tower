playsound block.enchantment_table.use master @s ~ ~ ~ 1 1 1

tellraw @s {"text": ""}
$tellraw @s {"text": "                   $(title)", "color": "$(color)", "bold": true}
tellraw @s {"text": "-----------------------------------", "color": "gray", "strikethrough": true}

$tellraw @s {"text": "       §7當前: §e$(level_text)      §7->      下一階: §e$(level_next)"}
tellraw @s {"text": ""}

#get all attributes and send
tellraw @s {"text": "       §7當前屬性:"}
function system:players/meditation/info/message/send_att_this with storage meditation:message

tellraw @s {"text": ""}
tellraw @s {"text": "       §7下一階段:\n           "}
tellraw @s {"text": ""}
tellraw @s [{"text": "       §7你有 "},{"score": {"name": "@s", "objective": "skill_points"}, "color": "yellow"}, {"text": " §7點技能點   "}, {"text": "§a§l[升級]"}]

tellraw @s {"text": "-----------------------------------", "color": "gray", "strikethrough": true}
tellraw @s {"text": ""}