# Made by LeviChou
#==============================================
# 1~10層基本衛兵 - 戰士
# origin from original datapack - mobs/warrior
#==============================================



#summon particle
function particles:enemy/summon_1_10_soldier

#summon
summon zombie ~ ~ ~ {id:"minecraft:zombie",Tags:["enemy","enemy.royal"],Health:20f,CustomName:'[{"text":"","italic":false},{"text":"聖白守衛","color": "#FFFFC4","bold": true}]',Attributes:[{Name:"generic.attack_damage",Base:0.0d}],HandItems:[{id:"minecraft:wooden_sword",Count:1b,tag:{CustomModelData:100}},{id:"minecraft:shield",Count:1b,tag:{BlockEntityTag:{Base:0}}}],HandDropChances:[0.0F,0.0F],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:16777215}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:16777215}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16777215}}},{id:"minecraft:leather_helmet",Count:1b,tag:{display:{color:16777215}}}],ArmorDropChances:[0.0F,0.0F,0.0F,0.0F],PortalCooldown:20,Team:"hostile",DeathLootTable:"enemy:soldier_1_10"}