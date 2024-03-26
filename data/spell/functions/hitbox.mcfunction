#interaction
    #player click
    execute on attacker run tag @s add spell.left_click
    execute on target run tag @s add spell.right_click

    #update
    scoreboard players add @s interaction.air 1
    execute if score @s interaction.air matches 2 run scoreboard players set @s interaction.air 0
    execute if score @s interaction.air matches 0 run data merge entity @s {Air:0}
    execute if score @s interaction.air matches 1 run data merge entity @s {Air:1}
    
    data remove entity @s attack
    data remove entity @s interaction

    execute positioned ~ ~-1.25 ~ unless entity @a[distance=..1] run kill @s