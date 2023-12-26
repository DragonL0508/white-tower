# Made by LeviChou
#==============================================
# 31~40層基本衛兵 - 聖光護衛
# origin from original datapack - mobs/4-2 (difficulty 2)
#==============================================



summon skeleton ~ ~ ~ {id:"minecraft:skeleton",Tags:["enemy","enemy.sun"],Health:60f,CustomNameVisible:1,CustomName:'[{"text":"","italic":false},{"text":"聖火劍士","color":"red"}]',Attributes:[{Name:"generic.attack_damage",Base:8.0d},{Name:"generic.follow_range",Base:100}],HandItems:[{Count:1b,id:"iron_sword",tag:{Enchantments:[{id:"minecraft:fire_aspect",lvl:1}]}},{}],HandDropChances:[0.0F,0.0F],ArmorItems:[{Count:1b,id:"iron_boots"},{},{Count:1b,id:"leather_chestplate",tag:{display:{color:16737792},Enchantments:[{id:"minecraft:protection",lvl:8}]}},{Count:1b,id:"minecraft:player_head",tag:{SkullOwner:{Id:[I;401093841,-1464383237,-1673491269,-871502953],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjFhY2M0ODM1OWY2OGVhYjliOGM1MGQ3ZDg0MDUyYzE2NzVlMWJjOGY2NTMzNGVkMDE3N2Q4MDk0NDk5NWFmMCJ9fX0="}]}}}}],ArmorDropChances:[0.0F,0.0F,0.0F,0.0F],PortalCooldown:60,Team:"hostile",DeathLootTable:"enemy:soldier"}