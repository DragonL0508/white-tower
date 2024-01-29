# 清空所有內容
data modify storage npc:village blacksmith set value {}

# 設定為商人NPC，商人會比一般NPC多一些設定可以操作
data modify storage npc:village blacksmith.Trader set value 1b

data modify storage npc:village blacksmith.NormalRandom set value 0b

# 聲音
data modify storage npc:village blacksmith.SoundPool set value []
data modify storage npc:village blacksmith.SoundPool append value {id:"minecraft:entity.vindicator.ambient",setting:{volume:2.0, pitch:1.0}}

# 清空列表
data modify storage npc:village blacksmith.Normal set value []
data modify storage npc:village blacksmith.Normal append value {Once:1b,Texts:['{"text":"看來是新人來了"}','{"text":"洒家叫布萊卡恩，\\n是這村最猛的鐵匠"}','{"text":"想升級武器裝備就來找洒家跟我的鍛造台"}','{"text":"要獲得基礎裝備也能找我"}'],Options:[{Option:'{"text":"如何使用鍛造台?"}',React:['{"text":"等龍教你"}']}]}
data modify storage npc:village blacksmith.Normal append value {Texts:['{"text":"需要鍛造服務嗎?"}']}
# ...

data modify storage npc:village blacksmith.TraderNormalRandom set value 0b

# 清空列表
data modify storage npc:village blacksmith.TraderNormal set value []
data modify storage npc:village blacksmith.TraderNormal append value {Texts:['{"text":"鐵匠可以講一些話"}']}
# ...

data modify storage npc:village blacksmith.Exit set value {Texts:['{"text":"有需要洒家，\\n再說一聲就行"}']}

# 清空列表
data modify storage npc:village blacksmith.Idle set value []
# ...

# 清空列表
data modify storage npc:village blacksmith.Buy set value []
# Buy和Sell列表的內容，會直接被填入開啟商店介面時召喚的村民，因此當作村民的nbt來填寫即可，除此之外可用Name引用戰利品表的內容(建議為單項物品之戰利品表)來取代id和tag
# 關於maxUses，當前版本填上2147483647就好，因當前並未寫上能限制購買次數的功能，每次重新召喚村民時此數字都會重置
data modify storage npc:village blacksmith.Buy append value {buy:{Name:"quest:demo/demo_currency",Count:2b},sell:{Name:"radio:basic_sword",Count:1b},maxUses:2147483647}
data modify storage npc:village blacksmith.Buy append value {buy:{Name:"quest:demo/demo_currency",Count:3b},sell:{Name:"radio:basic_axe",Count:1b},maxUses:2147483647}
data modify storage npc:village blacksmith.Buy append value {buy:{Name:"quest:demo/demo_currency",Count:5b},sell:{Name:"radio:basic_helmet",Count:1b},maxUses:2147483647}
data modify storage npc:village blacksmith.Buy append value {buy:{Name:"quest:demo/demo_currency",Count:8b},sell:{Name:"radio:basic_chestplate",Count:1b},maxUses:2147483647}
data modify storage npc:village blacksmith.Buy append value {buy:{Name:"quest:demo/demo_currency",Count:7b},sell:{Name:"radio:basic_leggings",Count:1b},maxUses:2147483647}
data modify storage npc:village blacksmith.Buy append value {buy:{Name:"quest:demo/demo_currency",Count:4b},sell:{Name:"radio:basic_boots",Count:1b},maxUses:2147483647}
# ...

# 清空列表
data modify storage npc:village blacksmith.Sell set value []
data modify storage npc:village blacksmith.Sell append value {buy:{id:"minecraft:leather",Count:4b},sell:{Name:"quest:demo/demo_currency",Count:1b},maxUses:2147483647}
# ...
