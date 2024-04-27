#is level end? (timeout & all players dead)
execute if score floor.timelimit tower matches -1 run data merge storage tower:floor.data {reason:"時間到"}
execute if score floor.timelimit tower matches -1 run function system:tower/command/scheduler/fighting/lose with storage tower:floor.data
execute unless entity @a[team=intower,gamemode=adventure] unless entity @a[tag=all_players_dead] run schedule function system:tower/command/scheduler/fighting/all_players_dead 3s

execute unless entity @a[team=intower,gamemode=adventure] run tag @a[team=intower] add all_players_dead

#skip
execute if data storage tower:floor.data {type:3} run return 0

#is wave clear?
execute unless score wave_cd tower matches -2147483648..2147483647 unless entity @e[team=hostile] run function system:tower/command/waves/next