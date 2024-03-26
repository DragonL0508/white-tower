title @s times 5 10 10
title @s subtitle {"text": "\uE000"}
title @s title {"text": "§7☽ 冥想"}
tellraw @s {"text": "§7§o*  你閉上了雙眼，開始冥想。 *"}

effect give @s blindness 1 0 true
effect give @s speed infinite 4 true
effect give @s jump_boost infinite 4 true
effect give @s invisibility infinite 0 true
particle large_smoke ~ ~1 ~ 0.2 0.3 0.2 0.05 30 force

tp @s 1019 -48 1438 180 0
playsound entity.evoker.prepare_summon master @s 1019 -48 1438 0.5 1.7

#teleport back system
scoreboard players operation @s meditation.id > @a meditation.id
scoreboard players operation @s meditation.id += 1 command
summon marker ~ ~ ~ {Tags:["meditation.back"]}
tp @e[type=marker,tag=meditation.back,sort=nearest,limit=1] @s
scoreboard players operation @e[type=marker,tag=meditation.back,sort=nearest,limit=1] meditation.id = @s meditation.id

tag @s add in_meditation