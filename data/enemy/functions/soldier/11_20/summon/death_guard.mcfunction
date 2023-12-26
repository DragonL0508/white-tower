# Made by LeviChou
#==============================================
# 11~20層基本衛兵 - 死靈護衛
# origin from original datapack - mobs/2-1 (difficulty 2)
#==============================================



summon zombie ~ ~ ~ {id:"minecraft:zombie",Tags:["enemy","enemy.death"],Health:80f,CustomNameVisible:true,CustomName:'[{"text":"","italic":false},{"text":"死靈護衛","color":"red"}]',Attributes:[{Name:"generic.attack_damage",Base:6.0d},{Name:"generic.follow_range",Base:100}],HandItems:[{},{}],HandDropChances:[0.0F,0.0F],ArmorItems:[{},{},{Count:1b,id:"iron_chestplate",tag:{}},{Count:1b,id:"minecraft:wither_skeleton_skull",tag:{}}],ArmorDropChances:[0.0F,0.0F,0.0F,0.0F],PortalCooldown:80,Team:"hostile",DeathLootTable:"enemy:soldier"}