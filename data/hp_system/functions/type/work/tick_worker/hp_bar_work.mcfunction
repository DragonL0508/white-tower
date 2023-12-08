#Made By Fan_Fan_tom
scoreboard players set 20 command 20
scoreboard players operation @s tmp_maxhp = @s maxhp
scoreboard players operation @s tmp_hp = @s hp
#operation
scoreboard players operation @s tmp_maxhp /= 20 command
scoreboard players operation @s tmp_hp /= @s tmp_maxhp

execute if score @s tmp_hp matches 20.. run data merge entity @e[type=text_display,tag=hp_bar,sort=nearest,limit=1] {CustomName:'"§a||||||||||||||||||||"'}
execute if score @s tmp_hp matches 19 run data merge entity @e[type=text_display,tag=hp_bar,sort=nearest,limit=1] {CustomName:'"§a|||||||||||||||||||§7|"'}
execute if score @s tmp_hp matches 18 run data merge entity @e[type=text_display,tag=hp_bar,sort=nearest,limit=1] {CustomName:'"§a||||||||||||||||||§7||"'}
execute if score @s tmp_hp matches 17 run data merge entity @e[type=text_display,tag=hp_bar,sort=nearest,limit=1] {CustomName:'"§a|||||||||||||||||§7|||"'}
execute if score @s tmp_hp matches 16 run data merge entity @e[type=text_display,tag=hp_bar,sort=nearest,limit=1] {CustomName:'"§a||||||||||||||||§7||||"'}
execute if score @s tmp_hp matches 15 run data merge entity @e[type=text_display,tag=hp_bar,sort=nearest,limit=1] {CustomName:'"§a|||||||||||||||§7|||||"'}
execute if score @s tmp_hp matches 14 run data merge entity @e[type=text_display,tag=hp_bar,sort=nearest,limit=1] {CustomName:'"§a||||||||||||||§7||||||"'}
execute if score @s tmp_hp matches 13 run data merge entity @e[type=text_display,tag=hp_bar,sort=nearest,limit=1] {CustomName:'"§a|||||||||||||§7|||||||"'}
execute if score @s tmp_hp matches 12 run data merge entity @e[type=text_display,tag=hp_bar,sort=nearest,limit=1] {CustomName:'"§a||||||||||||§7||||||||"'}
execute if score @s tmp_hp matches 11 run data merge entity @e[type=text_display,tag=hp_bar,sort=nearest,limit=1] {CustomName:'"§a|||||||||||§7|||||||||"'}
execute if score @s tmp_hp matches 10 run data merge entity @e[type=text_display,tag=hp_bar,sort=nearest,limit=1] {CustomName:'"§a||||||||||§7||||||||||"'}
execute if score @s tmp_hp matches 9 run data merge entity @e[type=text_display,tag=hp_bar,sort=nearest,limit=1] {CustomName:'"§a|||||||||§7|||||||||||"'}
execute if score @s tmp_hp matches 8 run data merge entity @e[type=text_display,tag=hp_bar,sort=nearest,limit=1] {CustomName:'"§a||||||||§7||||||||||||"'}
execute if score @s tmp_hp matches 7 run data merge entity @e[type=text_display,tag=hp_bar,sort=nearest,limit=1] {CustomName:'"§a|||||||§7|||||||||||||"'}
execute if score @s tmp_hp matches 6 run data merge entity @e[type=text_display,tag=hp_bar,sort=nearest,limit=1] {CustomName:'"§a||||||§7||||||||||||||"'}
execute if score @s tmp_hp matches 5 run data merge entity @e[type=text_display,tag=hp_bar,sort=nearest,limit=1] {CustomName:'"§a|||||§7|||||||||||||||"'}
execute if score @s tmp_hp matches 4 run data merge entity @e[type=text_display,tag=hp_bar,sort=nearest,limit=1] {CustomName:'"§a||||§7||||||||||||||||"'}
execute if score @s tmp_hp matches 3 run data merge entity @e[type=text_display,tag=hp_bar,sort=nearest,limit=1] {CustomName:'"§a|||§7|||||||||||||||||"'}
execute if score @s tmp_hp matches 2 run data merge entity @e[type=text_display,tag=hp_bar,sort=nearest,limit=1] {CustomName:'"§a||§7||||||||||||||||||"'}
execute if score @s tmp_hp matches 1 run data merge entity @e[type=text_display,tag=hp_bar,sort=nearest,limit=1] {CustomName:'"§a|§7|||||||||||||||||||"'}
execute if score @s tmp_hp matches 0 run data merge entity @e[type=text_display,tag=hp_bar,sort=nearest,limit=1] {CustomName:'"§7||||||||||||||||||||"'}
