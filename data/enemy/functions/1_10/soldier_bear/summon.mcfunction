# Made by LeviChou
#==============================================
# 1~10層基本衛兵 - 熊
# origin from original datapack - mobs/bear
#==============================================



#summon particle
function particles:enemy/summon_1_10_soldier

summon polar_bear ~ ~ ~ {id:"minecraft:polar_bear",Tags:["enemy","enemy.royal"],Health:70f,CustomName:'[{"text":"","italic":false},{"text":"聖白熊","color": "#FFFFC4","bold": true}]',Attributes:[{Name:"generic.attack_damage",Base:6.0d},{Name:"generic.movement_speed",Base:0.3}],HandItems:[{},{}],HandDropChances:[0.0F,0.0F],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{Enchantments:[{id:"minecraft:feather_falling",lvl:255}]}},{},{},{}],ArmorDropChances:[0.0F,0.0F,0.0F,0.0F],PortalCooldown:70,Team:"hostile",DeathLootTable:"system:mobs/normal",AngerTime:999999,Passengers:[{id:"minecraft:zombie",Tags:["enemy","enemy.royal"],Health:20f,CustomName:'[{"text":"","italic":false},{"text":"聖白熊騎士","color": "#FFFFC4","bold": true}]',Attributes:[{Name:"generic.attack_damage",Base:0.0d}],HandItems:[{id:"minecraft:wooden_sword",Count:1b,tag:{CustomModelData:100}},{}],HandDropChances:[0.0F,0.0F],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:16777215}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:16777215}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16777215}}},{id:"minecraft:leather_helmet",Count:1b,tag:{display:{color:16777215}}}],ArmorDropChances:[0.0F,0.0F,0.0F,0.0F],PortalCooldown:20,Team:"hostile",DeathLootTable:"enemy:soldier_1_10"}]}