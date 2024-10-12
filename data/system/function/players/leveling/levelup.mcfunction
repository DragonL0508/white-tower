$xp add @s -$(require) levels
scoreboard players add @s level 1
scoreboard players add @s skill_points 1

playsound custom:levelup master @s ~ ~ ~ 2 1
playsound entity.player.levelup master @a ~ ~ ~ 2 1
particle dust 10 10 10 1 ~ ~1 ~ 1 1 1 1 30 force
particle lava ~ ~1 ~ 0 0 0 0.25 10 force
particle totem_of_undying ~ ~2 ~ 0 0 0 0.3 30 force

tellraw @s {"text": "§7§m------------------------------"}
$tellraw @s ["",{"text":"等級提升: ","color":"yellow"},{"text":"$(require)","bold":true,"color":"red"},{"text":" -> ","color":"gray"},{"score":{"name":"@s","objective":"level"},"bold":true,"color":"green"}]
tellraw @s {"text": "§7- 敘述 2"}
tellraw @s {"text": "§7- 敘述 3"}
tellraw @s {"text": "§7§m------------------------------"}