#Made By Fan_Fan_tom

#input damage and id
scoreboard players set 10 command 10
scoreboard players set 2 command 2
scoreboard players operation @s damage /= 10 command
execute store result storage hp_system:damage damage int 1 run scoreboard players get @s damage
execute anchored eyes run function hp_system:type/work/tick_worker/damage/show_normal_atk_text with storage hp_system:damage

scoreboard players operation @s hp -= @s damage

#傷害統計
scoreboard players operation @p[tag=entityid.attacker] Fan.FinalDamage += @s damage

#hp_bar live time
scoreboard players set @s[tag=!hp_bar_showed] hp_bar_timer 100
execute if entity @s[tag=!hp_bar_showed] run function hp_system:type/work/tick_worker/hp_bar/summon_normal
tag @s[tag=!hp_bar_showed] add hp_bar_showed

#update hp_bar
execute store result storage hp_system:hp_update tmp_hp int 1 run scoreboard players get @s hp
execute store result storage hp_system:hp_update tmp_maxhp int 1 run scoreboard players get @s maxhp
function hp_system:type/work/tick_worker/hp_bar/operation_20 with storage hp_system:hp_update



#reset
scoreboard players reset @s damage

