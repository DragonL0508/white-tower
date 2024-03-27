say add player mana potion!

execute if score @s Hpots.max matches 1.. run scoreboard players add @s Mpots.max 1
execute if score @s Hpots.max matches 1.. run scoreboard players remove @s Hpots.max 1

scoreboard players operation @s Hpots.counts = @s Hpots.max
scoreboard players operation @s Mpots.counts = @s Mpots.max