#Made By Fan_Fan_tom

#input damage and id
execute store result storage hp_system:damage2 damage2 int 1 run scoreboard players get @s damage2
execute anchored eyes run function hp_system:type/work/tick_worker/damage/show_magic_atk_text with storage hp_system:damage2

scoreboard players operation @s hp -= @s damage2


#hp_bar live time
scoreboard players set @s[tag=!hp_bar_showed] hp_bar_timer 100
execute if entity @s[tag=!hp_bar_showed] store result storage hp_system:hp_bar id int 1 run scoreboard players get @s id
execute if entity @s[tag=!hp_bar_showed] run function hp_system:type/work/tick_worker/hp_bar/summon_normal with storage hp_system:hp_bar
tag @s[tag=!hp_bar_showed] add hp_bar_showed



#update hp_bar
execute store result storage hp_system:hp_update tmp_hp int 1 run scoreboard players get @s hp
execute store result storage hp_system:hp_update tmp_maxhp int 1 run scoreboard players get @s maxhp
execute store result storage hp_system:hp_update id int 1 run scoreboard players get @s id
function hp_system:type/work/tick_worker/hp_bar/operation_20 with storage hp_system:hp_update


#reset
scoreboard players reset @s damage2

