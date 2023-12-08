#declare score_holder $max The highest entity score
scoreboard players set $max find_look.temp 0
#declare tag find_looking.candidate
#declare tag find_looking.result
tag @e remove find_looking.result
tag @e[tag=find_looking.candidate] add find_looking.result
# Assign unique score to each entity
execute as @e[tag=find_looking.result] store result score @s find_look.temp run scoreboard players add $max find_look.temp 1

#declare score_holder $filter The rule by which to filter entities
scoreboard players set $filter find_look.temp 0

#declare tag find_looking.in_filter
tag @e remove find_looking.in_filter
function find_looking:internal/filter/iteration

#find_looking.result
#最後找到的生物
#execute as @e[tag=find_looking.result] run effect give @s glowing 1 1 true