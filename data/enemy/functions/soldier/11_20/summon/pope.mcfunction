# Made by LeviChou
#==============================================
# 11~20層基本衛兵 - 亡靈教主
# origin from original datapack - mobs/2-6 (difficulty 2)
#==============================================



summon skeleton ~ ~ ~ {id:"minecraft:skeleton",Tags:["enemy","enemy.death"],Health:30f,CustomNameVisible:1,CustomName:'[{"text":"","italic":false},{"text":"亡靈教主","color":"red"}]',Attributes:[{Name:"generic.attack_damage",Base:4.0d},{Name:"generic.movement_speed",Base:0.1f},{Name:"generic.follow_range",Base:100}],HandItems:[{Count:1b,id:"stick",tag:{Enchantments:[{id:"minecraft:knockback",lvl:5s}]}},{}],HandDropChances:[0.0F,0.0F],ArmorItems:[{Count:1b,id:"golden_boots"},{},{Count:1b,id:"leather_chestplate",tag:{display:{color:0}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1431623062,-462206505,-1227592065,-1387681294],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmZkOWM2ZjFkYzQ5Njc3NTUyNTk1YjZlODJmMTI5Njc3OGZiMGJkZDNlMGJjN2MxNTQwODRlYTJlMzMxNDRmIn19fQ=="}]}}}}],ArmorDropChances:[0.0F,0.0F,0.0F,0.0F],PortalCooldown:30,Team:"hostile",DeathLootTable:"enemy:soldier"}