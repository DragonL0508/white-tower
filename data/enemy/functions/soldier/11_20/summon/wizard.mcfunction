# Made by LeviChou
#==============================================
# 11~20層基本衛兵 - 亡魂
# origin from original datapack - mobs/2-5 (difficulty 2)
#==============================================



summon skeleton ~ ~ ~ {id:"minecraft:skeleton",Tags:["enemy","enemy.death"],Health:30f,CustomNameVisible:1,CustomName:'[{"text":"","italic":false},{"text":"亡魂法師","color":"red"}]',Attributes:[{Name:"generic.attack_damage",Base:4.0d},{Name:"generic.movement_speed",Base:0.1f},{Name:"generic.follow_range",Base:100}],HandItems:[{Count:1b,id:"stick",tag:{Enchantments:[{id:"minecraft:knockback",lvl:5s}]}},{}],HandDropChances:[0.0F,0.0F],ArmorItems:[{Count:1b,id:"leather_boots"},{},{Count:1b,id:"leather_chestplate",tag:{display:{color:0}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-2090969427,-1858058365,-1425762194,836113187],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjQ3MjZkOTQxMGJiNGJjODMwNjg3ZjA2MjhjZDdjNGVjMTU4YWNmNmI1NzQwM2E1NzYwZDE3NDc3Yjg0Njg2YSJ9fX0="}]}}}}],ArmorDropChances:[0.0F,0.0F,0.0F,0.0F],PortalCooldown:30,Team:"hostile",DeathLootTable:"enemy:soldier"}