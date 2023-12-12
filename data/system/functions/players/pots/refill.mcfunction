#message
tellraw @s {"text": "§7[§c!§7] §7你的藥水袋已被充填。"}
playsound block.brewing_stand.brew master @s ~ ~ ~ 1 1

#execute
scoreboard players operation @s Hpots.counts = @s Hpots.max
scoreboard players operation @s Mpots.counts = @s Mpots.max