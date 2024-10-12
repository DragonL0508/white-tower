# 清空所有內容
data modify storage npc:village potion set value {}

# 普通NPC的模板

data modify storage npc:village potion.NormalRandom set value 0b

# 聲音
data modify storage npc:village potion.SoundPool set value []
data modify storage npc:village potion.SoundPool append value {id:"minecraft:entity.allay.ambient_with_item",setting:{volume:2.0, pitch:1.0}}

# 清空列表
data modify storage npc:village potion.Normal set value []
data modify storage npc:village potion.Normal append value {Once:1b,Texts:['{"text":"您好阿，我是魔藥師蕾娜"}','{"text":"我可以幫您提升藥水的瓶數與效果"}','{"text":"只要把黃金種子跟聖杯滴露得我就好了"}'], Options:[{Option:'{"text":"什麼是黃金種子?"}',React:['{"text":"黃金種子就是黃金樹掉落下來的種子"}','{"text":"給我的話，我可以幫您增加藥水的瓶數"}']},{Option:'{"text":"什麼是聖杯滴露?"}',React:['{"text":"聖杯滴露是黃金樹時期的供奉用品\\n過去有神聖的露滴儀式"}','{"text":"給我的話，我可以幫您提升藥水的回覆量"}']}]}
data modify storage npc:village potion.Normal append value {Texts:['{"text":"午安\\n又需要提升了嗎?"}'],Options:[{Option:'{"text":"給予黃金種子"}',Condition:{Type:"item",Value:{id:"gold_nugget",Count:1b,tag:{golden_seed:1b}}},React:['{"text":"現在藥水瓶數增加了\\n要好好善用喔"}']},{Option:'{"text":"給予聖杯滴露"}',Condition:{Type:"item",Value:{id:"ghast_tear",Count:1b,tag:{holy_drip:1b}}},React:['{"text":"恢復量增加了\\n戰鬥要加油喔"}']},{Option:'{"text":"調配藥水數量"}',React:['{"text":"選擇要增加的藥水"}'],Extra:{StartCommand:"execute at @e[limit=1,tag=npc.figure,tag=npc.this] rotated ~ 0 run function endsky_npc:potion/options"}}]}
# ...

# 清空列表
data modify storage npc:village potion.PotionNormal set value []
data modify storage npc:village potion.PotionNormal append value {Texts:['{"text":"按「增加生命藥水」\\n就能有更多的生命藥水"}','{"text":"但是魔力藥水會減少\\n因為他們的總量是固定的"}','{"text":"「增加魔力藥水」也是類似的"}','{"text":"想增加總量的話\\n就把黃金種子交給我吧!"}']}
# ...

data modify storage npc:village potion.Exit set value {Texts:['{"text":"希望我的棉薄之力能幫助到您"}']}

# 清空列表
data modify storage npc:village potion.Idle set value []
# ...
