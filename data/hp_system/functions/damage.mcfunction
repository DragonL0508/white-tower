#Made By Fan_Fan_tom
#==============================================
#使用方法:
#範例:
#       {type:"damage",damage:10,limit:99,distance:"..10"}
#       {type:"damage2",damage:5,limit:1,distance:"..10"}
#參數說明:
# - distance 攻擊範圍
# - limit 玩家要攻擊的目標數量限制
# - type 為傷害類型  damage 為普通傷害 | damage2為魔法傷害
# - damage 為傷害數值 決定對該怪物造成多少傷害
#==============================================
#user
tag @s add Fan.attacker

#choose target
$tag @e[type=!#hp_system:nothing,sort=nearest,limit=$(limit),distance=$(distance)] add Fan.target

#update last attack player ID
execute as @e[type=!#hp_system:nothing,tag=Fan.target] run scoreboard players operation @s lastAttackerID = @p[tag=Fan.attacker] playerID

#set damage value if it is damage multiple 10
scoreboard objectives add Fan.damageType dummy "傷害類別.暫存"
#multiple 10
scoreboard players set 10 Fan.damageType 10
#check type
$scoreboard players set $(type) Fan.damageType 1
#damage
$execute if score damage Fan.damageType matches 1 run scoreboard players add @e[type=!#hp_system:nothing,tag=Fan.target] $(type) $(damage)
#add final damage score
$execute if score damage Fan.damageType matches 1 run scoreboard players add @s Fan.FinalDamage $(damage)
execute if score damage Fan.damageType matches 1 as @e[type=!#hp_system:nothing,tag=Fan.target] run scoreboard players operation @s damage *= 10 Fan.damageType
#damage2
$execute if score damage2 Fan.damageType matches 1 run scoreboard players add @e[type=!#hp_system:nothing,tag=Fan.target] $(type) $(damage)
#add final damage2 score
$execute if score damage2 Fan.damageType matches 1 run scoreboard players add @s Fan.FinalDamage2 $(damage)
#reset scoreboard and remove object
scoreboard players reset * Fan.damageType
scoreboard objectives remove Fan.damageType


#damage effect
execute as @e[type=!#hp_system:nothing,tag=Fan.target] run damage @s 0.000000001 out_of_world



#remove tag
tag @e[type=!#hp_system:nothing,tag=Fan.target] remove Fan.target
#remove Fan.attacker tag
tag @s remove Fan.attacker