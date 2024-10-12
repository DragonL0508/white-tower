# 清空所有內容
data modify storage npc:village magic set value {}

# 設定為商人NPC，商人會比一般NPC多一些設定可以操作
data modify storage npc:village magic.Trader set value 1b

data modify storage npc:village magic.NormalRandom set value 0b

# 聲音
data modify storage npc:village magic.SoundPool set value []
data modify storage npc:village magic.SoundPool append value {id:"minecraft:entity.blaze.hurt",setting:{volume:1.0, pitch:1.0}}

# 清空列表
data modify storage npc:village magic.Normal set value []
data modify storage npc:village magic.Normal append value {Once:1b,Texts:['{"text":"想學魔法嗎?"}','{"text":"跟我來..."}','{"text":"魔法是符文的組合"}','{"text":"正確的符文才能啟動卷軸"}','{"text":"進而施放魔法"}','{"text":"想知道更多就繼續問我吧!"}'],Options:[{Option:'{"text":"如何獲得卷軸?"}',React:['{"text":"花錢，我教你"}']}]}
data modify storage npc:village magic.Normal append value {Texts:['{"text":"又來學魔法嗎?"}']}
# ...

data modify storage npc:village magic.TraderNormalRandom set value 0b

# 清空列表
data modify storage npc:village magic.TraderNormal set value []
data modify storage npc:village magic.TraderNormal append value {Texts:['{"text":"別跟我說話..."}']}
# ...

data modify storage npc:village magic.Exit set value {Texts:['{"text":"學海無涯..."}']}

# 清空列表
data modify storage npc:village magic.Idle set value []
# ...

# 清空列表
data modify storage npc:village magic.Buy set value []
# Buy和Sell列表的內容，會直接被填入開啟商店介面時召喚的村民，因此當作村民的nbt來填寫即可，除此之外可用Name引用戰利品表的內容(建議為單項物品之戰利品表)來取代id和tag
# 關於maxUses，當前版本填上2147483647就好，因當前並未寫上能限制購買次數的功能，每次重新召喚村民時此數字都會重置
data modify storage npc:village magic.Buy append value {buy:{Name:"quest:demo/demo_currency",Count:12b},sell:{Name:"radio:magic_book1",Count:1b},maxUses:2147483647}
data modify storage npc:village magic.Buy append value {buy:{Name:"quest:demo/demo_currency",Count:24b},sell:{Name:"radio:magic_book2",Count:1b},maxUses:2147483647}

# ...

# 清空列表
data modify storage npc:village magic.Sell set value []
data modify storage npc:village magic.Sell append value {buy:{id:"minecraft:leather",Count:4b},sell:{Name:"quest:demo/demo_currency",Count:1b},maxUses:2147483647}
# ...
