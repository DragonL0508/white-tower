playsound block.enchantment_table.use master @s ~ ~ ~ 1 1 1

tellraw @s {"text": ""}
$tellraw @s {"text": "                   $(title)", "color": "$(color)", "bold": true}
tellraw @s {"text": "-----------------------------------", "color": "gray", "strikethrough": true}

$tellraw @s {"text": "       §7當前: §e$(level_text)      §7->      下一階: §e$(level_next)"}
tellraw @s {"text": ""}
tellraw @s {"text": "       §7當前屬性:\n           §a+0.0 §7近戰攻擊傷害"}
tellraw @s {"text": ""}
tellraw @s {"text": "       §7下一階段:\n           §a+0.5 §7近戰攻擊傷害"}
tellraw @s {"text": ""}
tellraw @s [{"text": "      §8你有 "},{"score": {"name": "@s", "objective": "skill_points"}, "color": "dark_gray"}, {"text": " §8點技能點 "}, {"text": "§a§l[升級]"}]

tellraw @s {"text": "-----------------------------------", "color": "gray", "strikethrough": true}
tellraw @s {"text": ""}