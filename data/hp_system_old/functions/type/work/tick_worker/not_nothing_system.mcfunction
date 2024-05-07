#Made By Fan_Fan_tom


#ID
execute unless score @s id matches -2147483648..2147483647 run function hp_system:type/work/tick_worker/id
#設定是否無敵
execute unless score @s invincible matches -2147483648..2147483647 run scoreboard players set @s invincible 0
#檢查該實體是否有設定好最大血量
execute unless score @s maxhp matches -2147483648..2147483647 run function hp_system:type/what_my_maxhp
#無法超過自身最大血量
execute if score @s hp > @s maxhp run scoreboard players operation @s hp = @s maxhp

#實際運算
function hp_system:type/work/tick_worker/is_invincible



