# Made by LeviChou
#==============================================
# 21~30層基本衛兵 - 喚毒魔法師
# origin from original datapack - mobs/3-6 (difficulty 2)
#==============================================



summon skeleton ~ ~ ~ {id:"minecraft:skeleton",Tags:["enemy","enemy.plant"],Health:40f,CustomNameVisible:1,CustomName:'[{"text":"","italic":false},{"text":"喚毒魔法師","color":"red"}]',Attributes:[{Name:"generic.attack_damage",Base:4.0d},{Name:"generic.follow_range",Base:100}],HandItems:[{Count:1b,id:"bone",tag:{Enchantments:[{id:"minecraft:knockback",lvl:5s}]}},{}],HandDropChances:[0.0F,0.0F],ArmorItems:[{Count:1b,id:"leather_boots"},{},{Count:1b,id:"leather_chestplate",tag:{display:{color:16649}}},{id:"minecraft:azalea",Count:1b}],ArmorDropChances:[0.0F,0.0F,0.0F,0.0F],PortalCooldown:40,Team:"hostile",DeathLootTable:"enemy:soldier"}