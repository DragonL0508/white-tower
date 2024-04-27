execute store result score @s ASXVelocity run data get entity @s Pos[0] 10000
execute store result score @s ASYVelocity run data get entity @s Pos[1] 10000
execute store result score @s ASZVelocity run data get entity @s Pos[2] 10000
tellraw DragonL {"score":{"name":"@s","objective":"ASXVelocity"}}

execute at @s run tp @s ^ ^ ^0.1

execute store result score @s ASX1 run data get entity @s Pos[0] 10000
execute store result score @s ASY1 run data get entity @s Pos[1] 10000
execute store result score @s ASZ1 run data get entity @s Pos[2] 10000
tellraw DragonL {"score":{"name":"@s","objective":"ASX1"}}

tp @s ~ ~ ~ ~ ~

scoreboard players operation @s ASXVelocity -= @s ASX1
scoreboard players operation @s ASYVelocity -= @s ASY1
scoreboard players operation @s ASZVelocity -= @s ASZ1
tellraw DragonL {"score":{"name":"@s","objective":"ASXVelocity"}}

execute store result entity @s Motion[0] double -0.0001 run scoreboard players operation @s ASXVelocity *= @s ASSpeed
execute store result entity @s Motion[1] double -0.0001 run scoreboard players operation @s ASYVelocity *= @s ASSpeed
execute store result entity @s Motion[2] double -0.0001 run scoreboard players operation @s ASZVelocity *= @s ASSpeed
tellraw DragonL {"score":{"name":"@s","objective":"ASXVelocity"}}