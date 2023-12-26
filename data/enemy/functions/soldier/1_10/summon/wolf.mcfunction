# Made by LeviChou
#==============================================
# 1~10層基本衛兵 - 狼
# origin from original datapack - mobs/wolf
# randomizer is not yet touched
#==============================================




summon wolf ~ ~ ~ {id:"minecraft:wolf",Tags:["enemy","enemy.royal"],Health:10f,CustomName:'[{"text":"","italic":false},{"text":"聖白獵犬","color": "#FFFFC4","bold": true}]',Attributes:[{Name:"generic.attack_damage",Base:6.0d}],HandItems:[{id:"minecraft:wooden_sword",Count:1b,tag:{CustomModelData:100}},{id:"minecraft:shield",Count:1b,tag:{BlockEntityTag:{Base:0}}}],HandDropChances:[0.0F,0.0F],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:16777215}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:16777215}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16777215}}},{id:"minecraft:leather_helmet",Count:1b,tag:{display:{color:16777215}}}],ArmorDropChances:[0.0F,0.0F,0.0F,0.0F],PortalCooldown:10,Team:"hostile",DeathLootTable:"enemy:soldier_1_10",AngerTime:999999}







#motion
#WORKING ON PROGRESS!!!
function system:randomizer/4
execute if score r.int command matches 1 run data merge entity @e[tag=mob.settings,sort=nearest,limit=1] {Motion:[0.5,0.4,0.0]}
execute if score r.int command matches 2 run data merge entity @e[tag=mob.settings,sort=nearest,limit=1] {Motion:[-0.5,0.4,0.0]}
execute if score r.int command matches 3 run data merge entity @e[tag=mob.settings,sort=nearest,limit=1] {Motion:[0.0,0.4,-0.5]}
execute if score r.int command matches 0 run data merge entity @e[tag=mob.settings,sort=nearest,limit=1] {Motion:[0.0,0.4,0.5]}
#WORKING ON PROGRESS!!!