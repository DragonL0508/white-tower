#Made By Fan_Fan_tom
function hp_system:type/work/tick_worker/hp_bar/same_id_tp
scoreboard players add @s hp_bar_timer 1
execute if score @s hp_bar_timer matches 100.. run tp @s ~ ~-987 ~
execute if score @s hp_bar_timer matches 100.. run kill @s