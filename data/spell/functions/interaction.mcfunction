#teleport
    execute positioned ~ ~1.25 ~ run tp @e[type=interaction,tag=spell.hitbox,sort=nearest,limit=1,distance=..1] ~ ~ ~

    scoreboard players add @s interaction.air 1
    execute if score @s interaction.air matches 2 run scoreboard players set @s interaction.air 0
    execute if score @s interaction.air matches 0 run data merge entity @s {Air:0}
    execute if score @s interaction.air matches 1 run data merge entity @s {Air:1}