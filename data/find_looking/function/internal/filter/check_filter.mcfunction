scoreboard players operation $selected find_look.temp = @s find_look.temp
scoreboard players operation $selected find_look.temp /= $filter find_look.temp
scoreboard players operation $selected find_look.temp %= 2 find_look.const
tag @s remove find_looking.in_filter
execute if score $selected find_look.temp matches 1 run tag @s add find_looking.in_filter
