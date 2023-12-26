# Made by LeviChou
#==============================================
# 21~30層基本衛兵 - 製毒法師
# origin from original datapack - mobs/3-5 (difficulty 2)
#==============================================



summon skeleton ~ ~ ~ {id:"minecraft:skeleton",Tags:["enemy","enemy.plant"],Health:40f,CustomNameVisible:1,CustomName:'[{"text":"","italic":false},{"text":"製毒法師","color":"red"}]',Attributes:[{Name:"generic.attack_damage",Base:4.0d},{Name:"generic.movement_speed",Base:0.1f},{Name:"generic.follow_range",Base:100}],HandItems:[{Count:1b,id:"bone",tag:{Enchantments:[{id:"minecraft:knockback",lvl:5s}]}},{}],HandDropChances:[0.0F,0.0F],ArmorItems:[{Count:1b,id:"leather_boots"},{},{Count:1b,id:"leather_chestplate",tag:{display:{color:16649}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-15832675,-2103947660,-1798257181,-990325008],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmY0YTA0ZGI0OWZkZTgxYjBkZDUzMzJjOWIyNDQyYjFiODBlZGFjYzU2MTFhNDdlOTljOTUxNTg3ODQ0NDk0OSJ9fX0="}]}}}}],ArmorDropChances:[0.0F,0.0F,0.0F,0.0F],PortalCooldown:40,Team:"hostile",DeathLootTable:"enemy:soldier"}