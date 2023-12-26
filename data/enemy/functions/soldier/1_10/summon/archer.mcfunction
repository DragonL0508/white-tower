# Made by LeviChou
#==============================================
# 1~10層基本衛兵 - 弓箭手
# origin from original datapack - mobs/archer
#==============================================



#summon particle
function particles:enemy/summon_1_10_soldier

summon skeleton ~ ~ ~ {id:"minecraft:skeleton",Tags:["enemy","enemy.royal"],Health:5f,CustomNameVisible:true,CustomName:'[{"text":"","italic":false},{"text":"聖白弓兵","color": "red","bold": true}]',Attributes:[{Name:"generic.attack_damage",Base:4.0d},{Name:"generic.movement_speed",Base:0.35}],HandItems:[{id:"minecraft:bow",Count:1b},{}],HandDropChances:[0.0F,0.0F],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:16777215}}},{},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16777215}}},{id:"minecraft:chainmail_helmet",Count:1b}],ArmorDropChances:[0.0F,0.0F,0.0F,0.0F],PortalCooldown:5,Team:"hostile",DeathLootTable:"enemy:soldier_1_10"}