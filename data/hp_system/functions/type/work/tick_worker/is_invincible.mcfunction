#> hp_system:type/work/tick_worker/is_invincible

#Made By Fan_Fan_tom
#invincible
#Boss 無敵/破綻系統
execute if score @s invincible matches 1.. at @s anchored eyes run function hp_system:type/work/tick_worker/damage/show_invincible_text 
execute if score @s damage matches 1.. unless score @s invincible matches 0 anchored eyes run function hp_system:type/work/tick_worker/damage/show_invincible_text 
execute if score @s damage2 matches 1.. unless score @s invincible matches 0 anchored eyes run function hp_system:type/work/tick_worker/damage/show_invincible_text 



#自訂傷害 / 傷害顯示 (for 一般怪物) / 怪物特殊技能
execute if score @s invincible matches 0 unless entity @s[type=player] run function hp_system:type/work/tick_worker/damage_and_hp_bar_system


