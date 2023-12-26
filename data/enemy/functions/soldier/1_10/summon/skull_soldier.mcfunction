# Made by LeviChou
#==============================================
# 1~10層基本衛兵 - 骷髏士兵
# origin from original datapack - mobs/1-2
#==============================================



#summon particle
function particles:enemy/summon_1_10_soldier

summon zombie ~ ~ ~ {id:"minecraft:zombie",Tags:["enemy","enemy.royal"],Health:20f,CustomNameVisible:true,CustomName:'[{"text":"","italic":false},{"text":"骷髏士兵","color":"red"}]',Attributes:[{Name:"generic.attack_damage",Base:3d},{Name:"generic.follow_range",Base:100}],HandItems:[{Count:1b,id:"stone_sword"},{}],HandDropChances:[0.0F,0.0F],ArmorItems:[{},{},{Count:1b,id:"chainmail_chestplate"},{Count:1b,id:"minecraft:player_head",tag:{SkullOwner:{Id:[I;1898654647,-370520581,-1994569282,-710270136],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTE0YzI5OTA4YTYyNWUxNWZhZDE4NThlODVlMTRhNDBhY2Y5Zjc5Yjc1NjNkZWVjNDQxMmM0ZmFmMWFhNTZlMyJ9fX0="}]}}}}],ArmorDropChances:[0.0F,0.0F,0.0F,0.0F],PortalCooldown:20,Team:"hostile",DeathLootTable:"enemy:soldier"}