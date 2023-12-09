#Made By Fan_Fan_tom

#紀錄自己是受過傷的
execute if entity @s[nbt={HurtTime:10s}] run tag @s add Fan.gotHurt
#紀錄誰最後攻擊怪物
execute if entity @s[nbt={HurtTime:10s}] on attacker run tag @s add Fan.tmpAtker
execute if entity @s[nbt={HurtTime:10s}] run scoreboard players operation @s lastAttackerID = @p[tag=Fan.tmpAtker] playerID

#execute if entity @s[nbt={HurtTime:10s}] run scoreboard players add @p[tag=Fan.tmpAtker] hit_amount 1

#存入傷害值
execute store result score @s[nbt={HurtTime:10s}] damage on attacker run scoreboard players get @s playerAttackDmg
#擴散傷害衰減
execute if entity @s[tag=find_looking.result,nbt={HurtTime:10s}] on attacker run function hp_system:type/work/tick_worker/sweeping_ench {is_looking:1}
execute if entity @s[tag=!find_looking.result,nbt={HurtTime:10s}] on attacker run function hp_system:type/work/tick_worker/sweeping_ench {is_looking:0}

#物理傷害 (紅色)
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

#reset tag
execute if entity @s[nbt={HurtTime:10s}] on attacker run tag @s remove Fan.tmpAtker
execute if entity @s[nbt={HurtTime:10s}] run tag @s remove Fan.gotHurt
scoreboard players reset tmp hit_amount