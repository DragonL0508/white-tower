# 清空所有內容
data modify storage npc:village pioneer set value {}

# 普通NPC的模板

data modify storage npc:village pioneer.NormalRandom set value 0b

# 清空列表
data modify storage npc:village pioneer.Normal set value []
data modify storage npc:village pioneer.Normal append value {Texts:['{"text":"4樓"}','{"text":"資訊資訊資訊"}']}
# ...

# 清空列表
data modify storage npc:village pioneer.Idle set value []
data modify storage npc:village pioneer.Idle append value {Text:'{"text":"閒置時定時顯示的文字1，不設定亦可"}',Duration:1,Rest:{min:10,max:20}}
data modify storage npc:village pioneer.Idle append value {Text:'{"text":"閒置時定時顯示的文字2，不設定亦可"}',Duration:{min:3,max:5},Rest:40}
# ...
