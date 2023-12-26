# Made by LeviChou
#==============================================
# 31~40層基本衛兵 - 月光法師
# origin from original datapack - mobs/4-5 (difficulty 2)
#==============================================



summon skeleton ~ ~ ~ {id:"minecraft:skeleton",Tags:["enemy","enemy.sun"],Health:60f,CustomNameVisible:1,CustomName:'[{"text":"","italic":false},{"text":"月光法師","color":"red"}]',Attributes:[{Name:"generic.attack_damage",Base:5.0d},{Name:"generic.movement_speed",Base:0.15f},{Name:"generic.follow_range",Base:100}],HandItems:[{Count:1b,id:"bone",tag:{Enchantments:[{id:"minecraft:knockback",lvl:5s}]}},{}],HandDropChances:[0.0F,0.0F],ArmorItems:[{Count:1b,id:"leather_boots"},{},{Count:1b,id:"leather_chestplate",tag:{display:{color:16777215},Enchantments:[{id:"minecraft:protection",lvl:1}]}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;863463034,822431048,-1510529256,-947117148],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODM3NzliZjhiZDgxNTI3Y2E1ODUxNjFhN2VmZGUwZjU4MDE0MjZlNWE1MDYzNDVlZWQ1YjFlM2RkMDUwODJiYSJ9fX0="}]}}}}],ArmorDropChances:[0.0F,0.0F,0.0F,0.0F],PortalCooldown:60,Team:"hostile",DeathLootTable:"enemy:soldier"}