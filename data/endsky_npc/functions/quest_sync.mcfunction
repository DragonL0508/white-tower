# 進度觸發器
effect give @s minecraft:unluck 1 0 true
effect clear @s minecraft:unluck

scoreboard players operation @s quest.version = $system quest.version
