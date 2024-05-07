- 編寫時共同遵守:

#FanFantom
#930901 adjust
- 最大血量請使用 PortalCooldown
- 不能使用吸收效果
- 持續類傷害皆不會運作
  
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
- 所有敵對生物在出生瞬間就已經加入hostile，不需要再其他函數另外把敵對生物加入隊伍hostile。

#radio0529
-

- 劇情概念:

- 敵人概念:

- 武器概念:

- ...
