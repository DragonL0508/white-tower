data modify storage npc:demo howhow set value {}
# 商人NPC的格式較普通NPC略有差別
data modify storage npc:demo howhow.Trader set value 1b
data modify storage npc:demo howhow.Normal set value []
data modify storage npc:demo howhow.Normal append value {Texts:['{"text":"你果然來啦"}','{"text":"宇宙貓貓已經知曉了一切"}','{"text":"貓們"}'],Once:1b}
data modify storage npc:demo howhow.Normal append value {Texts:['{"text":":learned:"}','{"text":"地下真是個好地方"}']}

data modify storage npc:demo howhow.TraderNormalRandom set value 1b
data modify storage npc:demo howhow.TraderNormal set value []
data modify storage npc:demo howhow.TraderNormal append value {Texts:['{"text":"願宇宙貓貓與你同在"}','{"text":"貓們"}']}
data modify storage npc:demo howhow.TraderNormal append value {Texts:['{"text":"這世界並不缺少神奇的知識"}','{"text":"缺少的是發現"}']}
data modify storage npc:demo howhow.TraderNormal append value {Texts:['{"text":"喔乾"}','{"text":"吃得好飽"}']}

data modify storage npc:demo howhow.Buy set value []
data modify storage npc:demo howhow.Buy append value {buy:{Name:"quest:demo/demo_currency",Count:1b},sell:{Name:"quest:demo/sus_mysterious_stone",Count:1b},maxUses:2147483647}

data modify storage npc:demo howhow.Sell set value []
data modify storage npc:demo howhow.Sell append value {buy:{Name:"quest:demo/not_so_mysterious_stone",Count:64b},sell:{Name:"quest:demo/demo_currency",Count:3b},maxUses:2147483647}
