$scoreboard players set floor.type tower $(type)
$scoreboard players set floor.timelimit tower $(timelimit)
$scoreboard players set floor.waves tower $(waves)
$scoreboard players set xp.rewards tower $(xp_rewards)

#marker tags
tag @e[tag=floor_teleporter] remove floor_teleporter
tag @e[tag=mob_spawn_spot] remove mob_spawn_spot
tag @e[tag=boss_spawn_spot] remove boss_spawn_spot
tag @e[tag=leave_teleporter] remove leave_teleporter
$tag @e[tag=$(tp)] add floor_teleporter
$tag @e[tag=$(mob_spawn)] add mob_spawn_spot
$tag @e[tag=$(boss_spawn)] add boss_spawn_spot
$tag @e[tag=$(leave)] add leave_teleporter

#summon leave door
kill @e[tag=leave_door_display,type=block_display]
execute as @e[type=marker,tag=leave_teleporter] at @s run function system:tower/command/leave_door/summon with storage tower:floor.data

#clear cache & schedules
schedule clear system:tower/command/scheduler/preparing/schedule
schedule clear system:tower/command/scheduler/fighting/schedule
data remove storage tower:waves.cache waves

scoreboard players set state tower 1
scoreboard players set wave tower 1
scoreboard players reset wave_cd tower
function system:tower/command/scheduler/preparing/schedule