#floor data setup
$function system:tower/floors/$(floor)/setup
scoreboard players set timer tower 15
bossbar set timelimit max 15
bossbar set timelimit name [{"text": "§e遊戲將在"},{"text": "15","color": "#FFFFCC"},{"text": "§e秒後開始"}]
kill @e[tag=clear]

#setup waves data first
$function system:tower/floors/$(floor)/waves