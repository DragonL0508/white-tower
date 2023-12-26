# Made by LeviChou
#==============================================
# 21~30層基本衛兵 - 魔法弓兵
# origin from original datapack - mobs/3-3 (difficulty 2)
#==============================================



summon skeleton ~ ~ ~ {id:"minecraft:skeleton",Tags:["enemy","enemy.plant"],Health:30f,CustomNameVisible:1,CustomName:'[{"text":"","italic":false},{"text":"魔法弓兵","color":"red"}]',Attributes:[{Name:"generic.attack_damage",Base:6.0d},{Name:"generic.follow_range",Base:100}],HandItems:[{Count:1b,id:"bow",tag:{Enchantments:[{id:"minecraft:power",lvl:10s}]}},{}],HandDropChances:[0.0F,0.0F],ArmorItems:[{},{},{Count:1b,id:"leather_chestplate",tag:{display:{color:5898275}}},{Count:1b,id:"minecraft:mangrove_roots"}],ArmorDropChances:[0.0F,0.0F,0.0F,0.0F],PortalCooldown:30,Team:"hostile",DeathLootTable:"enemy:soldier"}