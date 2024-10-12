tellraw @s {"text": "§7[§e✡§7] 你§a啟用§7了魔法護盾 !"}
scoreboard players reset @s shield.recover.timer
tag @s add shield.enable

#attribute
attribute @s generic.knockback_resistance base set 100
attribute @s generic.movement_speed base set 0.05
effect give @s resistance infinite 4 true
effect give @s weakness infinite 100 true

#effects
particle enchant ~ ~1 ~ 0 0.25 0 1 20 force
playsound block.enchantment_table.use master @a ~ ~ ~ 2 1.1