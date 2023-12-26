# Made by LeviChou
#==============================================
# 11~20層基本衛兵 - 亡靈弓箭手
# origin from original datapack - mobs/2-3 (difficulty 2)
#==============================================



summon skeleton ~ ~ ~ {id:"minecraft:skeleton",Tags:["enemy","enemy.death"],Health:20f,CustomNameVisible:true,CustomName:'[{"text":"","italic":false},{"text":"亡靈弓箭手","color":"red"}]',Attributes:[{Name:"generic.attack_damage",Base:6.0d},{Name:"generic.follow_range",Base:100}],HandItems:[{Count:1b,id:"bow",tag:{Enchantments:[{id:"minecraft:power",lvl:9s}]}},{}],HandDropChances:[0.0F,0.0F],ArmorItems:[{},{},{Count:1b,id:"chainmail_chestplate",tag:{}},{Count:1b,id:"minecraft:player_head",tag:{SkullOwner:{Id:[I;2048267317,-2065349005,-1862281771,-1072678910],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvM2E1Nzc1ZWFiYmJmODFmOGE5ZTNmYjE0MGZiN2RjYjBlNjhjNWIyZDAyZTEwYjEwNDM1NjQxMjU0OTRmMWEyZiJ9fX0="}]}}}}],ArmorDropChances:[0.0F,0.0F,0.0F,0.0F],PortalCooldown:20,Team:"hostile",DeathLootTable:"enemy:soldier"}