tellraw @s {"text": ""}
tellraw @s [{"selector":"@s","color": "gold"},{"text": " §e回合數據 :"}]

tellraw @s {"text": "§8------------------------------"}
execute if entity @s[gamemode=!spectator] run tellraw @s [{"text": "§7存活: "},{"text": "§a✔"}]
execute if entity @s[gamemode=spectator] run tellraw @s [{"text": "§7存活: "},{"text": "§c✖"}]
tellraw @s [{"text": "§7存活時間: "},{"text": "§e00:00:00"}]
tellraw @s {"text": ""}
tellraw @s [{"score":{"name":"@s","objective":"player.kills.round"},"color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"擊殺了 ","color":"gray"},{"score":{"name":"@s","objective":"player.kills.round"},"color":"white"},{"text":" 名敵人","color":"gray"}]}},{"text": "*☠","hoverEvent":{"action":"show_text","contents":[{"text":"擊殺了 ","color":"gray"},{"score":{"name":"@s","objective":"player.kills.round"},"color":"white"},{"text":" 名敵人","color":"gray"}]}},{"text": " §8| "},{"score":{"name":"@s","objective":"player.moneygot.round"},"color":"yellow","hoverEvent":{"action":"show_text","contents":[{"text":"拾取了 ","color":"gray"},{"score":{"name":"@s","objective":"player.moneygot.round"},"color":"yellow"},{"text":" 個金幣","color":"gray"}]}},{"text": "§e*⛃","hoverEvent":{"action":"show_text","contents":[{"text":"拾取了 ","color":"gray"},{"score":{"name":"@s","objective":"player.moneygot.round"},"color":"yellow"},{"text":" 個金幣","color":"gray"}]}}]
tellraw @s {"text": ""}
tellraw @s [{"text": "§7共造成了 "},{"score":{"name":"@s","objective":"player.damage.round"},"color": "red"},{"text": " §7物理傷害"}]
tellraw @s [{"text": "§7共造成了 "},{"score":{"name":"@s","objective":"player.damage2.round"},"color": "aqua"},{"text": " §7魔法傷害"}]
tellraw @s {"text": "§8------------------------------"}