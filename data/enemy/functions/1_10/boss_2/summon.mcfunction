# Made by LeviChou
#==============================================
#第10層頭目: 信仰使徒 札爾修斯
#- 神聖魔法師
#- 擁有召喚近戰士兵、瞬間移動的技能(目前的設計是在傳送時留下標記、招喚怪物，累計滿5個標記標記便會往Boss移動並爆炸。)
#- 使自己升空，發射魔法導彈攻擊玩家
#- 血量越低，技能施放越快、技能威脅越高
#==============================================



summon husk ~ ~ ~ {id:"minecraft:husk",Tags:["enemy","enemy.royal","enemy.boss","enemy.boss.2"],Health:200f,CustomName:'{"text":"信仰使徒 札爾修斯","color":"gold"}',HandItems:[{id:"minecraft:wooden_sword",Count:1b},{}],HandDropChances:[0.0F,0.0F],ArmorItems:[{},{},{},{}],ArmorDropChances:[0.0F,0.0F,0.0F,0.0F],PortalCooldown:200}