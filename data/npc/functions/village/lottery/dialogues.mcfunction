# 清空所有內容
data modify storage npc:village lottery set value {}

# 設定為商人NPC，商人會比一般NPC多一些設定可以操作
data modify storage npc:village lottery.Trader set value 1b

data modify storage npc:village lottery.NormalRandom set value 0b/1b

# 清空列表
data modify storage npc:village lottery.Normal set value []
data modify storage npc:village lottery.Normal append value {Texts:['{"text":"這是一個"}','{"text":"通常的模板對話"}']}
data modify storage npc:village lottery.Normal append value {Texts:['{"text":"可以用append的方式"}','{"text":"在列表中新增對話"}']}
data modify storage npc:village lottery.Normal append value {Texts:['{"text":"商人的通常對話"}','{"text":"建議不用太長"}']}
# ...

data modify storage npc:village lottery.TraderNormalRandom set value 0b/1b

# 清空列表
data modify storage npc:village lottery.TraderNormal set value []
data modify storage npc:village lottery.TraderNormal append value {Texts:['{"text":"商人NPC獨有的功能"}','{"text":"在商店選項點選交談後"}','{"text":"會出現的對話"}','{"text":"這部分就可以長一些"}']}
data modify storage npc:village lottery.TraderNormal append value {Texts:['{"text":"這邊同樣可以用append的方式"}','{"text":"新增對話"}']}
# ...

data modify storage npc:village lottery.Exit set value {Texts:['{"text":"離開商店選項介面時"}','{"text":"會顯示的對話"}','{"text":"不設定亦可"}']}

# 清空列表
data modify storage npc:village lottery.Idle set value []
data modify storage npc:village lottery.Idle append value {Text:'{"text":"閒置時定時顯示的文字1，不設定亦可"}',Duration:1,Rest:{min:10,max:20}}
data modify storage npc:village lottery.Idle append value {Text:'{"text":"閒置時定時顯示的文字2，不設定亦可"}',Duration:{min:3,max:5},Rest:40}
# ...

# 清空列表
data modify storage npc:village lottery.Buy set value []
# Buy和Sell列表的內容，會直接被填入開啟商店介面時召喚的村民，因此當作村民的nbt來填寫即可，除此之外可用Name引用戰利品表的內容(建議為單項物品之戰利品表)來取代id和tag
# 關於maxUses，當前版本填上2147483647就好，因當前並未寫上能限制購買次數的功能，每次重新召喚村民時此數字都會重置
data modify storage npc:village lottery.Buy append value {buy:{Name:"quest:demo/demo_currency",Count:12b},sell:{Name:"quest:demo/mysterious_stone",Count:1b},maxUses:2147483647}
# ...

# 清空列表
data modify storage npc:village lottery.Sell set value []
data modify storage npc:village lottery.Sell append value {buy:{id:"minecraft:leather",Count:4b},sell:{Name:"quest:demo/demo_currency",Count:1b},maxUses:2147483647}
# ...
