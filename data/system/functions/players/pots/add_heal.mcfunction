say add player heal potion!

execute if score @s Mpots.max matches 1.. run scoreboard players add @s Hpots.max 1
execute if score @s Mpots.max matches 1.. run scoreboard players remove @s Mpots.max 1

scoreboard players operation @s Hpots.counts = @s Hpots.max
scoreboard players operation @s Mpots.counts = @s Mpots.max