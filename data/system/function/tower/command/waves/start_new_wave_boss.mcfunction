#messages
title @a[team=intower] subtitle [{"text":"第","color":"gray"},{"score":{"name":"wave","objective":"tower"},"color":"red"},{"text":"波","color":"gray"}]
$title @a[team=intower] title $(boss_title)
execute as @a[team=intower] at @s run playsound entity.wither.spawn master @s ~ ~ ~ 1 1 1

#reset stuffs
scoreboard players reset wave_cd tower
schedule clear system:tower/command/waves/wave_cd
$bossbar set timelimit max $(timelimit)

#summon
execute store result storage tower:floor.data wave int 1 run scoreboard players get wave tower
function system:tower/command/waves/start with storage tower:floor.data

#summon boss
$execute as @e[type=marker,tag=boss_spawn_spot] at @s run function hostile:summon/$(boss_id)