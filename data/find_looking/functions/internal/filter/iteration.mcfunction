# Executes a single filter iteration and calls the next one
#say hi @e[tag=find_looking.result]
execute if score $filter find_look.temp matches 1.. as @e[tag=find_looking.candidate,tag=find_looking.result] run function find_looking:internal/filter/check_filter
execute if score $filter find_look.temp matches 0 run tag @e[tag=find_looking.candidate,tag=find_looking.result] add find_looking.in_filter

execute store success score $success find_look.temp if predicate find_looking:can_see_filter

execute if score $success find_look.temp matches 0 run tag @e[tag=find_looking.candidate,tag=find_looking.in_filter] remove find_looking.result
execute if score $success find_look.temp matches 1 run tag @e[tag=find_looking.candidate,tag=!find_looking.in_filter] remove find_looking.result

scoreboard players operation $filter find_look.temp *= 2 find_look.const
execute if score $filter find_look.temp matches 0 run scoreboard players set $filter find_look.temp 1

execute if entity @e[tag=find_looking.candidate,tag=find_looking.result,limit=1] if score $filter find_look.temp <= $max find_look.temp run function find_looking:internal/filter/iteration
