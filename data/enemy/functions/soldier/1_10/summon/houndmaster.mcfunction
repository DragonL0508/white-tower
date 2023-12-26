# Made by LeviChou
#==============================================
# 1~10層基本衛兵 - 馴狗大師
# origin from original datapack - mobs/houndmaster
#==============================================



#summon particle
function particles:enemy/summon_1_10_soldier

summon zombie ~ ~ ~ {id:"minecraft:zombie",Tags:["enemy","enemy.royal"],Health:30f,CustomNameVisible:true,CustomName:'[{"text":"","italic":false},{"text":"聖白獵犬師","color": "#FFFFC4","bold": true}]',Attributes:[{Name:"generic.attack_damage",Base:0.0d},{Name:"generic.movement_speed",Base:0.15}],HandItems:[{id:"minecraft:bone",Count:1b},{}],HandDropChances:[0.0F,0.0F],ArmorItems:[{id:"minecraft:chainmail_boots",Count:1b},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:stone_button",Count:1b}],ArmorDropChances:[0.0F,0.0F,0.0F,0.0F],PortalCooldown:30,Team:"hostile",DeathLootTable:"enemy:soldier_1_10"}