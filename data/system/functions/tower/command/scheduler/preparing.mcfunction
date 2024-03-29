schedule function system:tower/command/scheduler/preparing 1s

execute if score timer tower matches 15 run tellraw @a[team=intower] [{"text": "§7[§c!§7] §7關卡即將在"},{"score":{"name":"timer","objective":"tower"}},{"text": "§7秒後開始!"}]
execute if score timer tower matches 10 run tellraw @a[team=intower] [{"text": "§7[§c!§7] §7關卡即將在"},{"score":{"name":"timer","objective":"tower"}},{"text": "§7秒後開始!"}]
execute if score timer tower matches 5 run tellraw @a[team=intower] [{"text": "§7[§c!§7] §7關卡即將在"},{"score":{"name":"timer","objective":"tower"}},{"text": "§7秒後開始!"}]
execute if score timer tower matches 4 run tellraw @a[team=intower] [{"text": "§7[§c!§7] §7關卡即將在"},{"score":{"name":"timer","objective":"tower"}},{"text": "§7秒後開始!"}]
execute if score timer tower matches 3 run tellraw @a[team=intower] [{"text": "§7[§c!§7] §7關卡即將在"},{"score":{"name":"timer","objective":"tower"}},{"text": "§7秒後開始!"}]
execute if score timer tower matches 2 run tellraw @a[team=intower] [{"text": "§7[§c!§7] §7關卡即將在"},{"score":{"name":"timer","objective":"tower"}},{"text": "§7秒後開始!"}]
execute if score timer tower matches 1 run tellraw @a[team=intower] [{"text": "§7[§c!§7] §7關卡即將在"},{"score":{"name":"timer","objective":"tower"}},{"text": "§7秒後開始!"}]

#sounds every seconds
execute as @a[team=intower] at @s run playsound ui.button.click master @s ~ ~ ~ 0.2 1.5 0.2

#stop the scheduler, change the state to fighting
execute if score timer tower matches 0 run schedule clear system:tower/command/scheduler/preparing

#messages
execute if score timer tower matches 0 run title @a[team=intower] subtitle [{"text":"第","color":"gray"},{"score":{"name":"floor","objective":"tower"},"color":"red"},{"text":"層","color":"gray"}]
execute if score timer tower matches 0 run title @a[team=intower] title {"text": "§6關卡開始"}

execute if score timer tower matches 0 run scoreboard players set state tower 2
execute if score timer tower matches 0 run function system:tower/command/scheduler/fighting

#removo timer 1
scoreboard players remove timer tower 1