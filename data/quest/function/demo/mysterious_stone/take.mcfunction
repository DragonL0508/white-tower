scoreboard players set $demo.mysterious_stone quest.state 4
scoreboard players add $system quest.version 1
scoreboard players operation @a quest.version = $system quest.version
clear @s minecraft:stone{mysterious_stone:1b} 1
