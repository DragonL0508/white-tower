scoreboard players remove @s player.shield 1
playsound item.shield.block master @a ~ ~ ~ 2 1
playsound block.enchantment_table.use master @a ~ ~ ~ 2 2

execute store result score shield.player.health temp run data get entity @s Health
execute store result storage shield.damage damage int 0.5 run scoreboard players get shield.player.health temp

execute if score @s player.shield matches 0 run function system:players/shield/destroy with storage shield.damage