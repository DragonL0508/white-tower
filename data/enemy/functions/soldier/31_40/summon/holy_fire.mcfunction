# Made by LeviChou
#==============================================
# 31~40層基本衛兵 - 聖之火焰
# origin from original datapack - mobs/4-7 (difficulty 2)
#==============================================



summon zombie ~ ~ ~ {id:"minecraft:zombie",Tags:["enemy","enemy.sun"],Health:1f,CustomNameVisible:1,CustomName:'[{"text":"","italic":false},{"text":"聖之火焰","color":"red"}]',Attributes:[{Name:"generic.attack_damage",Base:1.0d},{Name:"generic.movement_speed",Base:0.3f},{Name:"generic.follow_range",Base:100}],HandItems::[{Count:1b,id:"minecraft:carrot_on_a_stick",tag:{Enchantments:[{id:"minecraft:fire_aspect",lvl:2}]}},{}],HandDropChances:[0.0F,0.0F],ArmorItems:[{},{},{Count:1b,id:"leather_chestplate",tag:{display:{color:16711680}}},{Count:1b,id:"minecraft:shroomlight"}],ArmorDropChances:[0.0F,0.0F,0.0F,0.0F],PortalCooldown:1,Team:"hostile",DeathLootTable:"enemy:soldier",IsBaby:1}