data modify storage npc:demo endsky.NormalRandom set value 1b
data modify storage npc:demo endsky.Normal set value []
data modify storage npc:demo endsky.Normal append value {Texts:['{"text":"你好啊"}','{"text":"你問我的工作是什麼?"}','{"text":"開發者跟我說我只要站在這裡就行了"}']}
data modify storage npc:demo endsky.Normal append value {Texts:['{"text":"就算是機器人"}','{"text":"一直站著"}','{"text":"也還是會覺得腿痠的"}','{"italic":true,"text":"好想休息啊啊啊"}'],Extra:{SoundOverrides:[{index:3,pool:[{id:"minecraft:entity.cat.ambient",setting:{pitch:0.2}}]}]}}
data modify storage npc:demo endsky.Normal append value {Texts:['{"text":"開發者說命令我要多說一點話"}','{"text":"因為他要測試隨機對話順序的系統"}','{"text":"結果就如你所見啦"}']}
data modify storage npc:demo endsky.Normal append value {Texts:['{"text":"在這個社會上"}','{"text":"錢是很重要的"}','{"text":"比如說新台幣一千元"}','{"text":"在這裡你常常能看到有人提起它"}','{"text":"這件事本身就已經凸顯了錢的重要性"}','{"text":"不過沒人付我薪水就是了"}']}
# 但是機器人是不需要薪水的
data modify storage npc:demo endsky.Normal append value {Texts:['{"text":"天氣真好"}','{"italic":true,"text":"但是好無聊啊~"}','{"text":"其實在我來到這裡之前"}','{"text":"太陽的位置和天氣從來都沒有變化過"}','{"text":"因為有人把日照和天氣循環關了"}']}
data modify storage npc:demo endsky.Normal append value {Texts:['{"text":"當你聽到這句話的時候——"}','{"text":"欸?"}','{"text":"你說這其實是「看到」?"}','{"text":"等等"}','{"text":"你能§c聽得到§r引號嗎?"}','{"text":"你說紅色?"}','{"text":"我......好像快瘋了"}'],Extra:{SoundOverrides:[{index:4,pool:[{id:"minecraft:entity.cat.ambient",setting:{pitch:0.2}}]},{index:5,pool:[{id:"minecraft:entity.cat.ambient",setting:{pitch:0.2}}]},{index:6,pool:[{id:"minecraft:entity.cat.death",setting:{pitch:0.5}}]}]}}

data modify storage npc:demo endsky.SoundPool set value [{id:"minecraft:entity.pillager.ambient",setting:{}},{id:"minecraft:entity.vindicator.ambient",setting:{}}]
