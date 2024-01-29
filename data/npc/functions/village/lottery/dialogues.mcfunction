# 清空所有內容
data modify storage npc:village lottery set value {}

# 設定為商人NPC，商人會比一般NPC多一些設定可以操作
data modify storage npc:village lottery.Trader set value 1b

data modify storage npc:village lottery.NormalRandom set value 1b

# 清空列表
data modify storage npc:village lottery.Normal set value []
data modify storage npc:village lottery.Normal append value {Texts:['{"text":"來買一張抽獎券吧!"}']}
data modify storage npc:village lottery.Normal append value {Texts:['{"text":"發家致富趁現在!"}']}
# ...

data modify storage npc:village lottery.TraderNormalRandom set value 1b

# 清空列表
data modify storage npc:village lottery.TraderNormal set value []
data modify storage npc:village lottery.TraderNormal append value {Texts:['{"text":"想知道抽獎券可以幹嘛嗎?"}','{"text":"你只要買一張抽獎券，並投入抽獎機之中\\n就會得到獎品"}','{"text":"最大獎是一把傳說中的武器\\n搞不好抽中的人就是你喔?"}']}
# ...

data modify storage npc:village lottery.Exit set value {Texts:['{"text":"要再來買喔"}']}

# 清空列表
data modify storage npc:village lottery.Idle set value []
data modify storage npc:village lottery.Idle append value {Text:'{"text":"快來買一張抽獎券"}',Duration:1,Rest:{min:10,max:20}}
data modify storage npc:village lottery.Idle append value {Text:'{"text":"搞不好中大獎的就是你喔!"}',Duration:{min:3,max:5},Rest:40}
# ...

# 清空列表
data modify storage npc:village lottery.Buy set value []
# Buy和Sell列表的內容，會直接被填入開啟商店介面時召喚的村民，因此當作村民的nbt來填寫即可，除此之外可用Name引用戰利品表的內容(建議為單項物品之戰利品表)來取代id和tag
# 關於maxUses，當前版本填上2147483647就好，因當前並未寫上能限制購買次數的功能，每次重新召喚村民時此數字都會重置
data modify storage npc:village lottery.Buy append value {buy:{Name:"quest:demo/demo_currency",Count:12b},sell:{Name:"radio:lottery",Count:1b},maxUses:2147483647}
# ...

# 清空列表
data modify storage npc:village lottery.Sell set value []
data modify storage npc:village lottery.Sell append value {buy:{id:"minecraft:leather",Count:4b},sell:{Name:"quest:demo/demo_currency",Count:1b},maxUses:2147483647}
# ...
