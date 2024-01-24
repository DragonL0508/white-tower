tellraw @s {"text": "§7[§e✡§7] 你§c停用§7了魔法護盾 !"}
tag @s add bypasser
tag @s remove shield.enable

#attribute
attribute @s generic.knockback_resistance base set 0
attribute @s generic.movement_speed base set 0.1
effect clear @s resistance
effect clear @s weakness

#sound
playsound block.enchantment_table.use master @a ~ ~ ~ 2 1.1