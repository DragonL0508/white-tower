data modify storage quest:demo mysterious_stone set value {}

# 階段為1時，由 "demo.radio" 觸發，選擇選項1後將階段設為2
data modify storage quest:demo mysterious_stone.Start set value {Texts:['{"text":"喔你來得正好"}','{"text":"創辦人那裡似乎出了點問題"}','{"text":"要求我尋找一個叫做「神奇石頭」的道具"}','{"text":"我記得 ","extra":[{"underlined":true,"text":"測試用末天機器人"},{"text":" 那邊有很多"}]}','{"text":"不過目前我手邊要處理的事太多了"}','{"text":"能請你幫我去跟他拿嗎"}'],Options:[{Option:'{"text":"接受任務"}',React:['{"text":"拜託了!"}'],Extra:{EndCommand:"function quest:demo/mysterious_stone/start"}},{Option:'{"text":"拒絕任務"}',React:['{"text":"沒關係"}','{"text":"那我稍後再找時間去跟他拿"}']}],Quest:1b}

# 階段為2時，由 "demo.radio" 觸發
data modify storage quest:demo mysterious_stone.Start_Remind set value {Texts:['{"text":"記得要去找 ","extra":[{"underlined":true,"text":"測試用末天機器人"},{"text":" 喔"}]}']}

# 階段為2時，由 "demo.endsky" 觸發，結束後將階段設為3，並給予道具
data modify storage quest:demo mysterious_stone.Ask set value {Texts:['{"text":"神奇石頭?"}','{"text":"我當然有啊"}','{"text":"而且現在特價中喔"}','{"text":"一顆只賣你新台幣一千元--"}','{"text":"--當然是開玩笑的"}','{"text":"按照規定這東西我得直接給你"}','{"italic":true,"text":"不然你以為我有多不想說剛剛是開玩笑的啊"}','{"text":"唉...你就拿去吧"}'],Extra:{EndCommand:"function quest:demo/mysterious_stone/give"}}

# 階段為3時，由 "demo.endsky" 觸發
data modify storage quest:demo mysterious_stone.Ask_Remind set value {Texts:['{"text":"把神奇石頭拿去給 ","extra":[{"underlined":true,"text":"收音機器人"},{"text":" 吧"}]}','{"text":"弄丟了我可不補發喔"}']}

# 階段為3時，由 "demo.radio" 觸發，玩家選擇是否提交任務道具，若選是且玩家持有該道具，收走指定道具，將階段設為4，結束時給予獎勵道具並將階段設為5
data modify storage quest:demo mysterious_stone.Turn_In set value {Texts:['{"text":"你拿到神奇石頭了嗎"}'],Options:[{Option:'{"text":"交出石頭"}',React:['{"text":"喔~有了!"}','{"text":"真的是太感謝你了"}','{"text":"雖然算不上什麼謝禮"}','{"text":"不過還請你收下這個吧"}'],Condition:{Type:"item",Value:{id:"minecraft:stone",tag:{mysterious_stone:1b},Count:1}},Extra:{StartCommand:"function quest:demo/mysterious_stone/take",EndCommand:"function quest:demo/mysterious_stone/finish"}},{Option:'{"text":"暫時不交出石頭"}',React:['{"text":"還沒拿到嗎"}','{"text":"我在這裡等你喔"}']}],Quest:1b}

# 階段為4時，由 "demo.radio" 觸發，補發獎勵道具，並將階段設為5
data modify storage quest:demo mysterious_stone.Reward set value {Texts:['{"text":"上次你走得太急了"}','{"text":"請收下這個吧"}'],Extra:{StartCommand:"function quest:demo/mysterious_stone/finish"}}
