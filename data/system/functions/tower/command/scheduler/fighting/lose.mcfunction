#messages
$title @a[team=intower] subtitle {"text": "§c$(reason)"}
title @a[team=intower] title {"text": "§7關卡失敗"}
execute as @a[team=intower] at @s run playsound entity.generic.explode master @s ~ ~ ~ 2 1 1

#reset
tag @a remove all_players_dead
scoreboard players reset state tower
team join prepared @a[team=intower]
kill @e[team=hostile]
kill @e[type=item]
schedule clear system:tower/command/scheduler/fighting/schedule
schedule clear system:tower/command/waves/wave_cd