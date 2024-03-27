schedule function system:tower/command/scheduler/preparing 1s

execute if score timer tower matches 15 run tellraw @a[team=intower] [{"text": "§7[§c!§7] §7關卡即將在"},{"score":{"name":"floor","objective":"tower"}},{"text": "§7秒後開始!"}]
execute if score timer tower matches 10 run tellraw @a[team=intower] [{"text": "§7[§c!§7] §7關卡即將在"},{"score":{"name":"floor","objective":"tower"}},{"text": "§7秒後開始!"}]
execute if score timer tower matches 5 run tellraw @a[team=intower] [{"text": "§7[§c!§7] §7關卡即將在"},{"score":{"name":"floor","objective":"tower"}},{"text": "§7秒後開始!"}]
execute if score timer tower matches 1 run tellraw @a[team=intower] [{"text": "§7[§c!§7] §7關卡即將在"},{"score":{"name":"floor","objective":"tower"}},{"text": "§7秒後開始!"}]

scoreboard players remove timer tower 1
execute if score timer tower matches 0 run schedule clear system:tower/command/scheduler/preparing