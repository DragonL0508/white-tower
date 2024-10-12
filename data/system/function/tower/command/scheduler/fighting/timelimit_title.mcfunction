$execute unless score wave_cd tower matches -2147483648..2147483647 run bossbar set timelimit name [{"text": "§e剩餘時間: "},{"text": "$(fighting_timer)","color": "#FFFFCC"},{"text": "§e秒"}]

execute unless score wave_cd tower matches -2147483648..2147483647 store result bossbar timelimit value run scoreboard players get floor.timelimit tower