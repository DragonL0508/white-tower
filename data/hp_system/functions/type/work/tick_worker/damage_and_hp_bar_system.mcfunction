#Made By Fan_Fan_tom

execute if entity @s[nbt={HurtTime:10s}] on attacker run scoreboard players operation @e[type=!#hp_system:nothing,sort=nearest,limit=1] lastAttackerID = @s playerID


#物理傷害 (紅色)
execute store result score @s[nbt={HurtTime:10s}] damage on attacker run scoreboard players get @s playerAttackDmg
execute if score @s damage matches 1.. run function hp_system:type/work/tick_worker/damage/normal

#自訂傷害 (技能)
execute if score @s damage2 matches 1.. run function hp_system:type/work/tick_worker/damage/magic

#刪除HP血條
scoreboard players remove @s[scores={hp_bar_timer=1..}] hp_bar_timer 1
tag @s[tag=hp_bar_showed,scores={hp_bar_timer=0}] remove hp_bar_showed
scoreboard players reset @s[scores={hp_bar_timer=0}] hp_bar_timer
tag @s[scores={hp_bar_timer=0},tag=hp_bar_timer] remove hp_bar_timer

#血量過低自殺(包含血條)
execute if score @s hp matches ..0 run function hp_system:type/work/tick_worker/hp_bar/same_id_kill

#給予無敵計算正確數值傷害
effect give @s resistance infinite 4 true

