- 編寫時共同遵守:

#FanFantom
- 最大血量請使用 PortalCooldown
- 無敵或是減免傷害不能用抗性
- 請不要使用燃燒
如果真的需要 請使用 HasVisualFire:1b
因為指令是偵測HurtTime 10s
燃燒則算在 HurtTime 9s
會導致有玩家的攻擊傷害被燃燒傷害吃掉
==============================================
使用方法:
範例:
       {type:"damage",damage:10,limit:99,distance:"..10"}
       {type:"damage2",damage:5,limit:1,distance:"..10"}
參數說明:
 - distance 攻擊範圍
 - limit 玩家要攻擊的目標數量限制
 - type 為傷害類型  damage 為普通傷害 | damage2為魔法傷害
 - damage 為傷害數值 決定對該怪物造成多少傷害
==============================================

#DragonL
#必須遵守
- 玩家在塔外，team會是players
- 玩家在準備房間，team會是prepared
- 玩家在關卡內，team會是intower
- 所有敵人必須加入隊伍hostile

#不一定要遵守，看你方不方便
- 玩家第一次加入會執行system:players/first_join
- 每tick讓所有玩家持續執行(execute as @a at @s run)的function是system:players/loop

#LeviChou
-

#radio0529
-

- 劇情概念:

- 樓層概念:

- 敵人概念:

- 武器概念:

- ...