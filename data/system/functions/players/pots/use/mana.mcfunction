#execute
scoreboard players operation @s player.mana = @s player.maxmana
particle instant_effect ~ ~ ~ 0 0 0 0.1 20 force

#message
tellraw @s {"text": "§7§o* 你飲用了一瓶 §b§o魔力藥水§7§o。*"}
playsound entity.generic.drink master @s ~ ~ ~ 1 1

#scoreboard
scoreboard players remove @s Mpots.counts 1