#execute
effect give @s instant_health 1 100 true
particle heart ~ ~2 ~ 0 0 0 0.01 1 force

#message
tellraw @s {"text": "§7§o* 你飲用了一瓶 §c§o生命藥水§7§o。*"}
playsound entity.generic.drink master @s ~ ~ ~ 1 1

#scoreboard
scoreboard players remove @s Hpots.counts 1