scoreboard players add @s any.timer 1

execute if score @s any.timer matches 1 \
    run particle falling_water ~ ~1.5 ~ 0 0 0 0 1 force @a

execute if score @s any.timer matches 15 \
    run function system:tower/floors/7/command/draw_circle

execute if score @s any.timer matches 60.. run scoreboard players reset @s any.timer