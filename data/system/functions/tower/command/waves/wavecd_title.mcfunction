$bossbar set timelimit name [{"text": "§e下一波將在"},{"text": "$(wave_cd)","color": "#FFFFCC"},{"text": "§e秒後開始"}]

execute store result bossbar timelimit value run scoreboard players get wave_cd tower

execute if score wave_cd tower matches 0 run bossbar set timelimit name {"text": "§e戰鬥開始"}