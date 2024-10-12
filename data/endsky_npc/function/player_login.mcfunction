advancement revoke @s only endsky_npc:player_login

# 初始化玩家編號
execute unless score @s npc.player = @s npc.player run function endsky_npc:player_init

# 將對話狀態重設
scoreboard players set @s npc.state 0

# 若只有一個玩家，大部分時候代表這是伺服器啟動後第一次有區塊載入
execute store result score $playerOnline npc.utils if entity @a
execute if score $playerOnline npc.utils matches 1 run scoreboard players set @e[type=minecraft:marker,tag=npc.idle] npc.idle -1

# 檢查玩家任務版本是否與系統相同
execute unless score @s quest.version = $system quest.version run function endsky_npc:quest_sync

scoreboard players set @s npc.logged_out 0
