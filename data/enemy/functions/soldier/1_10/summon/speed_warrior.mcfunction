# Made by LeviChou
#==============================================
# 1~10層基本衛兵 - 高速戰士
# origin from original datapack - mobs/speed_warrior
#==============================================



#summon particle
function particles:enemy/summon_1_10_soldier

summon zombie ~ ~ ~ {id:"minecraft:zombie",Tags:["enemy","enemy.royal"],Health:10f,CustomName:'[{"text":"","italic":false},{"text":"衝鋒聖衛","color": "#FFFFC4","bold": true}]',Attributes:[{Name:"generic.attack_damage",Base:3.0d},{Name:"generic.movement_speed",Base:0.35}],HandItems:[{id:"minecraft:wooden_sword",Count:1b,tag:{CustomModelData:110}},{}],HandDropChances:[0.0F,0.0F],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:16775936}}},{},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16777215}}},{id:"minecraft:leather_helmet",Count:1b,tag:{display:{color:16777215}}}],ArmorDropChances:[0.0F,0.0F,0.0F,0.0F],PortalCooldown:10,Team:"hostile",DeathLootTable:"enemy:soldier_1_10"}