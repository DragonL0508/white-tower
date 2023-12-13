#Made By Fan_Fan_tom
#==============================================
#使用方法:
#範例:
#       {heal:10}
#execute as @e[type=minecraft:creeper,sort=nearest,limit=1] run function hp_system:heal {heal:10}
#參數說明:
# - heal 要治療多少血量
#==============================================

#work
$scoreboard players add @s hp $(heal)
$execute at @s anchored eyes run function hp_system:type/work/tick_worker/heal/show_heal {heal:$(heal)}

#如果血量大於最大血量，為了顯示數值正確先做一次調整 (by dragonl)
execute if score @s hp > @s maxhp run scoreboard players operation @s hp = @s maxhp

#update hp_bar
execute store result storage hp_system:hp_update tmp_hp int 1 run scoreboard players get @s hp
execute store result storage hp_system:hp_update tmp_maxhp int 1 run scoreboard players get @s maxhp
execute store result storage hp_system:hp_update id int 1 run scoreboard players get @s id
function hp_system:type/work/tick_worker/hp_bar/operation_20 with storage hp_system:hp_update


