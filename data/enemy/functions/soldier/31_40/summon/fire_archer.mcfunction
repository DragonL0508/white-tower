# Made by LeviChou
#==============================================
# 31~40層基本衛兵 - 聖光弓兵
# origin from original datapack - mobs/4-3 (difficulty 2)
#==============================================



summon skeleton ~ ~ ~ {id:"minecraft:skeleton",Tags:["enemy","enemy.sun"],Health:40f,CustomNameVisible:1,CustomName:'[{"text":"","italic":false},{"text":"聖光弓兵","color":"red"}]',Attributes:[{Name:"generic.attack_damage",Base:6.0d},{Name:"generic.follow_range",Base:100}],HandItems:[{Count:1b,id:"bow",tag:{Enchantments:[{id:"minecraft:power",lvl:15s}]}},{}],HandDropChances:[0.0F,0.0F],ArmorItems:[{},{},{Count:1b,id:"leather_chestplate",tag:{display:{color:16777215},Enchantments:[{id:"minecraft:protection",lvl:1}]}},{Count:1b,id:"minecraft:player_head",tag:{SkullOwner:{Id:[I;-1563671382,-872002121,-1521300423,1631675289],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvY2UwZDNmMjhiOGUwZjBhNDVjYTJiNDJiNmY0OTViYmZkYTczNzMyZDNhM2YxMDhmNjM1MmU3NThlMWNiOWJhOSJ9fX0="}]}}}}],ArmorDropChances:[0.0F,0.0F,0.0F,0.0F],PortalCooldown:40,Team:"hostile",DeathLootTable:"enemy:soldier"}