#tower states (per tick execute)
execute unless score state tower matches -2147483648..2147483647 run function system:tower/command/in_lobby
execute if score state tower matches 1 run function system:tower/command/preparing
execute if score state tower matches 2 run function system:tower/command/fighting
execute if score state tower matches 3 run function system:tower/command/game_end

#tower entry & getout
execute as @e[type=marker,tag=entry] at @s run function system:tower/entry_portal

#show timelimit bossbar
bossbar set timelimit players @a[team=intower]