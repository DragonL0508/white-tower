tellraw @s {"text": ""}
tellraw @s [{"text": "§6"},{"selector":"@s"},{"text": " §e回合數據 :"}]

tellraw @s {"text": "§8------------------------------"}
execute if entity @s[gamemode=!spectator] run tellraw @s [{"text": "§7存活: "},{"text": "§a✔"}]
execute if entity @s[gamemode=spectator] run tellraw @s [{"text": "§7存活: "},{"text": "§c✖"}]
tellraw @s [{"text": "§7存活時間: "},{"text": "§e00:00:00"}]
tellraw @s {"text": ""}
tellraw @s ["",{"score":{"name":"@s","objective":"player.kills.round"},"color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"擊殺了 ","color":"gray"},{"score":{"name":"@s","objective":"player.kills.round"},"color":"white"},{"text":" 名敵人","color":"gray"}]}},{"text": "☠","hoverEvent":{"action":"show_text","contents":[{"text":"擊殺了 ","color":"gray"},{"score":{"name":"@s","objective":"player.kills.round"},"color":"white"},{"text":" 名敵人","color":"gray"}]}}]
tellraw @s [{"text": "§7共拾取 "},{"score":{"name":"@s","objective":"player.moneygot.round"},"color": "gold"},{"text": " §7個金幣"}]
tellraw @s {"text": ""}
tellraw @s [{"text": "§7共造成了 "},{"score":{"name":"@s","objective":"player.damage.round"},"color": "red"},{"text": " §7物理傷害"}]
tellraw @s [{"text": "§7共造成了 "},{"score":{"name":"@s","objective":"player.damage2.round"},"color": "aqua"},{"text": " §7魔法傷害"}]
tellraw @s {"text": "§8------------------------------"}