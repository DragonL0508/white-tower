#Made By Fan_Fan_tom
#init
scoreboard objectives add command dummy "指令需要"
scoreboard objectives add command_timer dummy "指令專用計時器"
scoreboard objectives add id dummy "ID"
scoreboard players set 10 command 10

scoreboard objectives add invincible dummy "無敵狀態"
scoreboard objectives add hp dummy "怪物血量"
scoreboard objectives add maxhp dummy "怪物最大血量"
scoreboard objectives add damage dummy "怪物受到傷害"
scoreboard objectives add playerAttackDmg minecraft.custom:minecraft.damage_dealt_resisted "玩家攻擊傷害"
scoreboard objectives add playerID dummy "玩家ID"
scoreboard objectives add lastAttackerID dummy "最後攻擊的玩家"


scoreboard objectives add hp_bar_timer dummy "血量條計時器"
scoreboard objectives add tmp_maxhp dummy "暫存最大血量"
scoreboard objectives add tmp_hp dummy "暫存血量"


function hp_system:type/tick