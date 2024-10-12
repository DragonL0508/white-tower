#Made By Fan_Fan_tom

#橫掃之刃 1
#減去基礎橫掃傷害 1
$execute if score is_looking hit_amount matches 1 run scoreboard players remove $(who) damage 10
$execute if score is_looking hit_amount matches 0 run scoreboard players set $(who) damage 0
#處理分母 先複製橫掃之刃等級
execute store result storage this:this deno double 1 run scoreboard players add sweeping.level hit_amount 1
#處理分子
execute store result storage this:this mole double 1 run scoreboard players remove sweeping.level hit_amount 1
#存入武器基礎傷害
execute store result storage this:this basic double 1 run attribute @s generic.attack_damage get 1
#計算傷害倍率 50% 67% 75%
$function hp_system:type/work/tick_worker/operation/sweep_damage {who:"$(who)",operation:"$(operation)"}


