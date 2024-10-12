#Made By Fan_Fan_tom
#tick
#玩家編號ID
execute as @a unless score @s playerID matches -2147483648..2147483647 run function hp_system:type/work/player_id

#looking system
execute as @a at @s run tag @e[type=!#hp_system:nothing,distance=..3.3] add find_looking.candidate
execute as @a at @s run function find_looking:find
tag @e[type=!#hp_system:nothing,tag=find_looking.candidate] remove find_looking.candidate

#擊中生物數量
execute as @e[type=!#hp_system:nothing,nbt={HurtTime:10s}] at @s on attacker run scoreboard players add @s hit_amount 1

#怪物需要的運作
#自訂傷害 / 傷害顯示 (for 一般怪物) / 怪物特殊技能
#Boss 血量 / BOSS 招式 / Boss 無敵/ 破綻系統
execute as @e[type=!#hp_system:nothing] at @s run function hp_system:type/work/tick_worker/not_nothing_system

#怪物血量顯示 固定在怪物頭上系統
execute as @e[type=text_display,tag=hp_bar] at @s run function hp_system:type/work/tick_worker/hp_bar/worker

#傷害顯示處理
scoreboard players add @e[type=text_display,tag=damage] command_timer 1
execute as @e[type=text_display,tag=damage,scores={command_timer=1..5}] at @s run tp @s ~ ~0.125 ~
execute as @e[type=text_display,tag=damage,scores={command_timer=6..10}] at @s run tp @s ~ ~0.05 ~
execute as @e[type=text_display,tag=damage,scores={command_timer=11..20}] at @s run tp @s ~ ~0.025 ~
kill @e[type=text_display,tag=damage,scores={command_timer=20..}]


#Reset
scoreboard players reset @a[scores={playerAttackDmg=1..}] playerAttackDmg
scoreboard players reset @a[scores={hit_amount=1..}] hit_amount
#Loop
schedule function hp_system:type/tick 1t