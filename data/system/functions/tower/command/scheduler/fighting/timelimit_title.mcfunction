$execute unless score wave_cd tower matches -2147483648..2147483647 run bossbar set timelimit name [{"text": "§e剩餘時間: "},{"text": "$(fighting_timer)","color": "#FFFFCC"},{"text": "§e秒"}]

$execute if score wave_cd tower matches -2147483648..2147483647 run bossbar set timelimit name [{"text": "§e下一波將在 "},{"text": "$(wave_cd)","color": "#FFFFCC"},{"text": " §e秒後開始"}]