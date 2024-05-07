#Made By Fan_Fan_tom


#設定是否無敵
execute unless score @s invincible matches -2147483648..2147483647 run scoreboard players set @s invincible 0
execute if score @s invincible matches 1.. run scoreboard players remove @s invincible 1
#檢查該實體是否有設定好最大血量
execute unless score @s maxhp matches -2147483648..2147483647 run function hp_system:type/what_my_maxhp
#無法超過自身最大血量
scoreboard players operation @s hp < @s maxhp

# 取消傷害
execute unless data entity @s {AbsorptionAmount:1000.0f} run data modify entity @s AbsorptionAmount set value 1000

#刪除HP血條
scoreboard players remove @s[scores={hp_bar_timer=1..}] hp_bar_timer 1
tag @s[tag=hp_bar_showed,scores={hp_bar_timer=0}] remove hp_bar_showed
scoreboard players reset @s[scores={hp_bar_timer=0}] hp_bar_timer
tag @s[scores={hp_bar_timer=0},tag=hp_bar_timer] remove hp_bar_timer