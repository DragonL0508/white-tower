#is wave clear?
execute unless score wave_cd tower matches -2147483648..2147483647 unless entity @e[team=hostile] run function system:tower/command/waves/next

#is level end? (timeout & all players dead)
execute if score floor.timelimit tower matches -1 run function system:tower/command/scheduler/fighting/lose {reason:"時間到"}
execute unless entity @a[team=intower,gamemode=adventure] unless entity @a[tag=all_players_dead] run schedule function system:tower/command/scheduler/fighting/all_players_dead 3s

execute unless entity @a[team=intower,gamemode=adventure] run tag @a[team=intower] add all_players_dead