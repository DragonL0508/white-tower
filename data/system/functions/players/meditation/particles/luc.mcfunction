scoreboard players add @s any.timer 1

execute if score @s any.timer matches 1 \
    run particle falling_water ~ ~3.5 ~0.2 0 0 0 0 1 force @a

execute if score @s any.timer matches 12 \
    run particle happy_villager ~ ~1.5 ~ 0.05 0.05 0.05 0 10 force @a

execute if score @s any.timer matches 60.. run scoreboard players reset @s any.timer