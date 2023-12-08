#Made By Fan_Fan_tom
#invincible
#Boss 無敵/破綻系統
execute unless score @s invincible matches -2147483648..2147483647 run scoreboard players set @s invincible 0
execute if score @s invincible matches 1.. run scoreboard players remove @s invincible 1

execute unless score @s[nbt={HurtTime:10s}] invincible matches 0 anchored eyes run function hp_system:type/work/tick_worker/damage/show_invincible_text 
execute if score @s damage matches 1.. unless score @s invincible matches 0 anchored eyes run function hp_system:type/work/tick_worker/damage/show_invincible_text 
execute if score @s damage2 matches 1.. unless score @s invincible matches 0 anchored eyes run function hp_system:type/work/tick_worker/damage/show_invincible_text 



#自訂傷害 / 傷害顯示 (for 一般怪物) / 怪物特殊技能
execute if score @s invincible matches 0 run function hp_system:type/work/tick_worker/damage_and_hp_bar_system


