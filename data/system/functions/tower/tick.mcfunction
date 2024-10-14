#tower states (per tick execute)
execute unless score state tower matches 1.. run function system:tower/command/in_lobby
execute if score state tower matches 1 run function system:tower/command/preparing
execute if score state tower matches 2 run function system:tower/command/fighting
execute if score state tower matches 3 run function system:tower/command/game_end
execute if score state tower matches 1.. run function system:tower/library_tick with storage tower:floor.data

#tower entry & leave
execute as @e[type=marker,tag=entry] at @s run function system:tower/entry_portal

#show timelimit bossbar
bossbar set timelimit players @a[team=intower]