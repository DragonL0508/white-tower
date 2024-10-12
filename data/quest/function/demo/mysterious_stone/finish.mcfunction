scoreboard players set $demo.mysterious_stone quest.state 5
loot give @s loot quest:demo/not_so_mysterious_stone_stack
scoreboard players add $system quest.version 1
scoreboard players operation @a quest.version = $system quest.version
advancement grant @a only quest:demo/mysterious_stone/finish
