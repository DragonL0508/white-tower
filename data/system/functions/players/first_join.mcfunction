scoreboard players set @s level 1
scoreboard players set @s skill_points 0

scoreboard players set @s Hpots.counts 1
scoreboard players set @s Hpots.max 1
scoreboard players set @s Mpots.counts 1
scoreboard players set @s Mpots.max 1

scoreboard players set @s player.mana 20
scoreboard players set @s player.maxmana 20
scoreboard players set @s player.shield 5
scoreboard players set @s player.maxshield 5
scoreboard players set @s player.potion_level 1

scoreboard players set @s attribute.HP 0
scoreboard players set @s attribute.INT 0
scoreboard players set @s attribute.LUC 0
scoreboard players set @s attribute.RES 0
scoreboard players set @s attribute.STR 0

scoreboard players set @s money 0
scoreboard players set @s actionbar_type 1

team join player @s

tag @s add joined

#health updater
effect give @s minecraft:absorption 1 0 true