# Made by LeviChou
#==============================================
# 1~10層基本衛兵 - 坦克
# origin from original datapack - mobs/tank
#==============================================



#summon particle
function particles:enemy/summon_1_10_soldier


summon zombie ~ ~ ~ {id:"minecraft:zombie",Tags:["enemy","enemy.royal"],Health:20f,CustomName:'[{"text":"","italic":false},{"text":"聖白盾衛","color": "#FFFFC4","bold": true}]',Attributes:[{Name:"generic.attack_damage",Base:0.0d},{Name:"generic.knockback_resistance",Base:10.0}],HandItems:[{id:"minecraft:wooden_sword",Count:1b,tag:{CustomModelData:100}},{id:"minecraft:shield",Count:1b,tag:{BlockEntityTag:{Base:0}}}],HandDropChances:[0.0F,0.0F],ArmorItems:[{id:"minecraft:iron_boots",Count:1b,tag:{display:{color:16777215}}},{id:"minecraft:iron_leggings",Count:1b,tag:{display:{color:16777215}}},{id:"minecraft:iron_chestplate",Count:1b,tag:{display:{color:16777215}}},{id:"minecraft:iron_helmet",Count:1b,tag:{display:{color:16777215}}}],ArmorDropChances:[0.0F,0.0F,0.0F,0.0F],PortalCooldown:20,Team:"hostile",DeathLootTable:"enemy:soldier_1_10"}