$scoreboard players set floor.type tower $(type)
$scoreboard players set floor.timelimit tower $(timelimit)
$scoreboard players set floor.waves tower $(waves)

#marker tags
tag @e[tag=floor_teleporter] remove floor_teleporter
tag @e[tag=mob_spawn_spot] remove mob_spawn_spot
tag @e[tag=boss_spawn_spot] remove boss_spawn_spot
$tag @e[tag=$(tp)] add floor_teleporter
$tag @e[tag=$(mob_spawn)] add mob_spawn_spot
$tag @e[tag=$(boss_spawn)] add boss_spawn_spot

#clear cache & schedules
schedule clear system:tower/command/scheduler/preparing/schedule
schedule clear system:tower/command/scheduler/fighting/schedule
data remove storage tower:waves.cache waves

scoreboard players set state tower 1
scoreboard players set wave tower 1
scoreboard players reset wave_cd tower
function system:tower/command/scheduler/preparing/schedule