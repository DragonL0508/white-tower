#meditation
    #store pitch data into scoreboard
    execute store result score @s player.pitch run data get entity @s Rotation[1]
    #checker
    execute if entity @s[team=player,tag=!in_meditation] if score @s player.pitch matches 80.. if score @s sneak matches 1.. run scoreboard players add @s meditation.timer 1
    execute if score @s meditation.timer matches 1.. run effect give @s blindness 20 0 true
    execute unless score @s player.pitch matches 80.. run scoreboard players reset @s meditation.timer
    execute unless score @s sneak matches 1.. run scoreboard players reset @s meditation.timer

    execute if score @s meditation.timer matches 40.. run function system:players/meditation/start