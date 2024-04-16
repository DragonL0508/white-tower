tellraw @s {"text": "§8------------------------------"}
tellraw @s [{"text": "§6"},{"selector":"@s"},{"text": " §e玩家數據 :"}]
tellraw @s {"text": ""}
tellraw @s [{"text": "§7你擊殺了 "},{"score":{"name":"@s","objective":"player.kills.round"},"color": "gold"},{"text": " §7名敵人"}]
tellraw @s {"text": ""}
tellraw @s [{"text": "§7你共造成了 "},{"score":{"name":"@s","objective":"player.damage.round"},"color": "red"},{"text": " §7物理傷害"}]
tellraw @s [{"text": "§7你共造成了 "},{"score":{"name":"@s","objective":"player.damage2.round"},"color": "aqua"},{"text": " §7魔法傷害"}]
tellraw @s {"text": "§8------------------------------"}