tellraw @s {"text": ""}
tellraw @s [{"text": "§6"},{"selector":"@s"},{"text": " §e回合數據 :"}]

tellraw @s {"text": "§8------------------------------"}
tellraw @s [{"text": "§7你擊殺了 "},{"score":{"name":"@s","objective":"player.kills.round"},"color": "gold"},{"text": " §7名敵人"}]
tellraw @s {"text": ""}
tellraw @s [{"text": "§7共造成了 "},{"score":{"name":"@s","objective":"player.damage.round"},"color": "red"},{"text": " §7物理傷害,"}]
tellraw @s [{"text": "§7共造成了 "},{"score":{"name":"@s","objective":"player.damage2.round"},"color": "aqua"},{"text": " §7魔法傷害"}]
tellraw @s {"text": ""}
execute if entity @s[gamemode=!spectator] run tellraw @s [{"text": "§7存活: "},{"text": "§a✔"}]
execute if entity @s[gamemode=spectator] run tellraw @s [{"text": "§7存活: "},{"text": "§c✖"}]
tellraw @s [{"text": "§7存活時間: "},{"text": "§e00:00:00"}]
tellraw @s {"text": "§8------------------------------"}