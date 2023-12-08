scoreboard objectives add npc.logged_out minecraft.custom:minecraft.leave_game
scoreboard objectives add npc.player dummy
scoreboard objectives add npc.utils dummy
scoreboard objectives add npc.const dummy

scoreboard objectives add npc.id dummy
scoreboard objectives add npc.split dummy
scoreboard objectives add npc.user dummy
scoreboard objectives add npc.occupied dummy
scoreboard objectives add npc.state dummy
scoreboard objectives add npc.idle dummy
scoreboard objectives add npc.count dummy
scoreboard objectives add npc.quest dummy
scoreboard objectives add npc.trader dummy
scoreboard objectives add npc.option dummy
scoreboard objectives add npc.look_option dummy
scoreboard objectives add npc.reset dummy
scoreboard objectives add npc.timer dummy

scoreboard players reset * npc.timer
scoreboard players set $20 npc.const 20

# 若已記錄的玩家數量為空值，將其設為0
execute unless score $playerCount npc.player = $playerCount npc.player run scoreboard players set $playerCount npc.player 0

# 使用假玩家儲存任務進度
scoreboard objectives add quest.state dummy
# 用於同步所有玩家的進度
scoreboard objectives add quest.version dummy
execute unless score $system quest.version = $system quest.version run scoreboard players set $system quest.version 0

# 無碰撞隊伍
team add npc.trader
team modify npc.trader collisionRule never

# 重設所有NPC的閒置對話狀態
scoreboard players set @e[type=minecraft:marker,tag=npc.idle] npc.idle -1

# 任務初始化
function quest:demo/mysterious_stone/dialogues
function quest:demo/sus_mysterious_stone/dialogues

#declare storage endsky_npc:common
#declare storage endsky_npc:trader
#declare storage endsky_npc:utils

