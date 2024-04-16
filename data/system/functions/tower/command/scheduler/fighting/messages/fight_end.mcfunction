tellraw @s {"text": "§8------------------------------"}
tellraw @s [{"text": "§6"},{"selector":"@s"},{"text": " §e玩家數據 :"}]
tellraw @s {"text": ""}
tellraw @s [{"text": "§7你擊殺了 §6"},{"score":{"name":"@s","objective":"player.kills.round"}},{"text": " §7名敵人"}]
tellraw @s {"text": ""}
tellraw @s [{"text": "§7你共造成了 §c"},{"score":{"name":"@s","objective":"player.damage.round"}},{"text": " §7物理傷害"}]
tellraw @s [{"text": "§7你共造成了 §b"},{"score":{"name":"@s","objective":"player.damage2.round"}},{"text": " §7魔法傷害"}]
tellraw @s {"text": "§8------------------------------"}