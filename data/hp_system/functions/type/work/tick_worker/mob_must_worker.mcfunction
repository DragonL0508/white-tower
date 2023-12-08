#Made By Fan_Fan_tom
#ID
execute unless score @s id matches -2147483648..2147483647 run function hp_system:type/work/tick_worker/id


#自訂傷害 / 傷害顯示
execute if entity @s[tag=!main_castle_creeper,tag=!sub_castle_creeper] run function hp_system:type/work/tick_worker/damage_and_hp_bar_system
#Boss HP
function hp_system:type/work/tick_worker/boss_hp_worker
