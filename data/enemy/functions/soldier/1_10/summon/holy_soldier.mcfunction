# Made by LeviChou
#==============================================
# 1~10層基本衛兵 - 神聖護衛
# origin from original datapack - mobs/1-1 (difficulty 2)
#==============================================



#summon particle
function particles:enemy/summon_1_10_soldier

summon zombie ~ ~ ~ {id:"minecraft:zombie",Tags:["enemy","enemy.royal"],Health:40f,CustomNameVisible:true,CustomName:'[{"text":"","italic":false},{"text":"神聖護衛","color":"red"}]',Attributes:[{Name:"generic.attack_damage",Base:5d},{Name:"generic.follow_range",Base:100}],HandItems:[{},{}],HandDropChances:[0.0F,0.0F],ArmorItems:[{},{},{Count:1b,id:"chainmail_chestplate",tag:{}},{Count:1b,id:"minecraft:ochre_froglight",tag:{}}],ArmorDropChances:[0.0F,0.0F,0.0F,0.0F],PortalCooldown:40,Team:"hostile",DeathLootTable:"enemy:soldier"}