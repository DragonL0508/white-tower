scoreboard players add @s any.timer 1

execute if score @s any.timer matches 1 \
    run particle falling_water ~0.1 ~3.5 ~0.1 0 0 0 0 1 force

execute if score @s any.timer matches 12 \
    run particle happy_villager ~ ~1.5 ~0.25 0.3 0.3 0.3 0 10 force

execute if score @s any.timer matches 120.. run scoreboard players reset @s any.timer