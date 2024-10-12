data modify storage npc:demo davleek set value {}
# 商人NPC的格式較普通NPC略有差別
data modify storage npc:demo davleek.Trader set value 1b
data modify storage npc:demo davleek.NormalRandom set value 1b
data modify storage npc:demo davleek.Normal set value []
data modify storage npc:demo davleek.Normal append value {Texts:['{"text":"你好啊"}','{"text":"交易系統測試中喔"}']}
data modify storage npc:demo davleek.Normal append value {Texts:['{"text":"早安!"}','{"text":"真是美好的一天"}']}
data modify storage npc:demo davleek.Normal append value {Texts:['{"text":"天天喜歡吃蘿蔔"}']}
data modify storage npc:demo davleek.Normal append value {Texts:['{"text":"咳......"}','{"text":"沒事w"}']}

data modify storage npc:demo davleek.TraderNormal set value []

data modify storage npc:demo davleek.Exit set value {Texts:['{"text":"要再來喔"}']}

data modify storage npc:demo davleek.Buy set value []
data modify storage npc:demo davleek.Buy append value {buy:{Name:"quest:demo/demo_currency",Count:12b},sell:{Name:"quest:demo/mysterious_stone",Count:1b},maxUses:2}

data modify storage npc:demo davleek.Sell set value []
data modify storage npc:demo davleek.Sell append value {buy:{id:"minecraft:leather",Count:4b},sell:{Name:"quest:demo/demo_currency",Count:1b},maxUses:2147483647}
