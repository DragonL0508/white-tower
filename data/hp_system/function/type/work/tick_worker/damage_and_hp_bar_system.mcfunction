#Made By Fan_Fan_tom

#紀錄誰最後攻擊怪物
scoreboard players operation @s lastAttackerID = @p[tag=entityid.attacker] playerID



#存入傷害值
execute store result score @s damage run data get entity @s AbsorptionAmount 10
scoreboard players remove @s damage 10000
scoreboard players set -1 command -1
scoreboard players operation @s damage *= -1 command

#物理傷害 (紅色)
execute if score @s damage matches 1.. at @s run function hp_system:type/work/tick_worker/damage/normal

#自訂傷害 (技能)
execute if score @s damage2 matches 1.. at @s run function hp_system:type/work/tick_worker/damage/magic



#血量過低自殺(包含血條)
execute if score @s hp matches ..0 at @s run function hp_system:type/work/tick_worker/hp_bar/same_id_kill

#給予吸收計算正確數值傷害
attribute @s generic.max_absorption base set 1000
data modify entity @s AbsorptionAmount set value 1000
