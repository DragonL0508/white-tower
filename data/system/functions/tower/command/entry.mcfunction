#if player is the first, execute setup command
execute store result storage tower:floor.data floor int 1 run scoreboard players get floor tower
execute unless entity @a[team=intower] run function system:tower/command/is_first_join with storage tower:floor.data

#player commands
team join intower
tellraw @a [{"text": "§7[§e!§7] "},{"selector":"@s"},{"text": " §c準備挑戰第"},{"score":{"name":"floor","objective":"tower"},"color":"red"},{"text": "§c層。"}]

title @s times 5 10 10
title @s subtitle {"text": "\uE000"}
title @s title [{"text":"第","color":"gray"},{"score":{"name":"floor","objective":"tower"},"color":"red"},{"text":"層","color":"gray"}]

function cb:schedule {ticks:10,selector:"@s",command:"tp @s @e[type=marker,tag=floor_teleporter,limit=1]"}