#Made By Fan_Fan_tom
#===============================================
#抓取哪個實體死亡 可以在kill發生前執行需要的動作
#===============================================
#execute if entity @s[type=creeper,tag=test] run say test creeper died
execute if entity @s[team=hostile] at @s run function hostile:command/who_am_i



#==============================分隔線========================================================







#===============================================
#抓取擊殺怪物者(包含技能傷害擊殺)
#===============================================
#前置設定
scoreboard players operation tmp lastAttackerID = @s lastAttackerID
execute as @a if score @s playerID = tmp lastAttackerID run tag @s add Fan.lastAtk
#運作區
#在這裡可以寫下要對擊殺怪物者執行的動作
#=============================================
#say @a[tag=Fan.lastAtk] 殺死我的








#=============================================
#重設所有玩家的tag
tag @a[tag=Fan.lastAtk] remove Fan.lastAtk
#reset score
scoreboard players reset tmp lastAttackerID