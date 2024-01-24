#effects & messages
playsound custom:money master @s ~ ~ ~ 1 1
tellraw @s [{"text": "§7[§e$§7] 你拾取了 "},{"score":{"name":"money.get","objective":"temp"},"color":"gold"},{"text": " §7個金幣!"}]
scoreboard players operation @s money += money.get temp

#reset scoreboard
scoreboard players reset money.get temp