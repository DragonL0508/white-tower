$execute if score @s hostile.ability.cd matches 0 run function hostile:command/random_ability with storage hostile:$(id)

scoreboard players remove @s[tag=!ability_using] hostile.ability.cd 1