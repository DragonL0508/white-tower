#interaction
    execute as @e[type=interaction,tag=spell.hitbox] at @s run function spell:hitbox
#global animation (for macro)
    scoreboard players add spelling.animation spell.timer 18
    execute if score spelling.animation spell.timer matches 360 run scoreboard players set spelling.animation spell.timer 0
    execute store result storage spelling.animation.angle angle int 1.0 run scoreboard players get spelling.animation spell.timer