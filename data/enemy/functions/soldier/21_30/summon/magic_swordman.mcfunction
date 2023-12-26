# Made by LeviChou
#==============================================
# 21~30層基本衛兵 - 暗黑之影
# origin from original datapack - mobs/3-2 (difficulty 2)
#==============================================



summon skeleton ~ ~ ~ {id:"minecraft:skeleton",Tags:["enemy","enemy.plant"],Health:60f,CustomNameVisible:1,CustomName:'[{"text":"","italic":false},{"text":"魔法劍士","color":"red"}]',Attributes:[{Name:"generic.attack_damage",Base:5.0d},{Name:"generic.follow_range",Base:100}],HandItems:[{Count:1b,id:"iron_sword"},{}],HandDropChances:[0.0F,0.0F],ArmorItems:[{},{},{Count:1b,id:"leather_chestplate",tag:{display:{color:5898275}}},{Count:1b,id:"minecraft:azalea_leaves"}],ArmorDropChances:[0.0F,0.0F,0.0F,0.0F],PortalCooldown:60,Team:"hostile",DeathLootTable:"enemy:soldier"}