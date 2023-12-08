scoreboard players set $demo.sus_mysterious_stone quest.state 4
loot give @s loot quest:demo/demo_currency
loot give @s loot quest:demo/demo_currency
loot give @s loot quest:demo/demo_currency
loot give @s loot quest:demo/demo_currency
loot give @s loot quest:demo/demo_currency
loot give @s loot quest:demo/demo_currency
scoreboard players add $system quest.version 1
scoreboard players operation @a quest.version = $system quest.version
advancement grant @a only quest:demo/sus_mysterious_stone/finish
