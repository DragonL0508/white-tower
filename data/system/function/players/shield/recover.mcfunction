scoreboard players add @s shield.recover.timer 1

execute if score @s shield.recover.timer matches 200 run scoreboard players add @s player.shield 1
execute if score @s shield.recover.timer matches 200 run scoreboard players reset @s shield.recover.timer