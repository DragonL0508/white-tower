schedule function system:tower/command/scheduler/preparing/schedule 1s

execute if score timer tower matches 15 run tellraw @a[team=intower] [{"text": "§7[§c!§7] §7關卡即將在"},{"score":{"name":"timer","objective":"tower"}},{"text": "§7秒後開始!"}]
execute if score timer tower matches 10 run tellraw @a[team=intower] [{"text": "§7[§c!§7] §7關卡即將在"},{"score":{"name":"timer","objective":"tower"}},{"text": "§7秒後開始!"}]
execute if score timer tower matches 1..5 run tellraw @a[team=intower] [{"text": "§7[§c!§7] §7關卡即將在"},{"score":{"name":"timer","objective":"tower"}},{"text": "§7秒後開始!"}]

#set bossbar title
execute store result storage tower:floor.data preparing_timer int 1 run scoreboard players get timer tower
function system:tower/command/scheduler/preparing/timelimit_title with storage tower:floor.data

#sounds every seconds
execute as @a[team=intower] at @s run playsound ui.button.click master @s ~ ~ ~ 0.2 1.5 0.2

#stop the schedule
execute if score timer tower matches 0 run function system:tower/command/scheduler/preparing/next

#remove timer
scoreboard players remove timer tower 1