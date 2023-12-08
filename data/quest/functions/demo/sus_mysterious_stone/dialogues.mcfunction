data modify storage quest:demo sus_mysterious_stone set value {}

# 階段為1時，由 "demo.davleek" 觸發，選擇選項1後將階段設為2
data modify storage quest:demo sus_mysterious_stone.Start set value {Texts:['{"text":"天天可以拜託你一件事嗎"}','{"text":"聽說教主浩浩有在販售一種詭異的石頭"}','{"text":"好像是叫做「神奇又不神奇的石頭」吧"}','{"text":"天天想要買個三塊這種石頭\\n測試它們在建築上面的效果"}','{"text":"但是天天的肝已經快要爆炸了"}','{"text":"總之能請你幫我跑一趟嗎?"}'],Options:[{Option:'{"text":"接受任務"}',React:['{"text":"謝謝!"}','{"text":"天天會多付你一點的"}'],Extra:{EndCommand:"function quest:demo/sus_mysterious_stone/start"}},{Option:'{"text":"拒絕任務"}',React:['{"text":"沒關係..."}','{"text":"天天還不會升天的..."}']}],Quest:1b}

# 階段為2時，由 "demo.howhow" 觸發
data modify storage quest:demo sus_mysterious_stone.Remind set value {Texts:['{"text":"神奇又不神奇的石頭?"}','{"text":"拿出錢我就賣給你啊"}']}

# 階段為2時，由 "demo.davleek" 觸發，選擇選項1後「瞬間將階段設為3，結束後將階段設為4」
data modify storage quest:demo sus_mysterious_stone.Item set value {Texts:['{"text":"去找教主浩浩買石頭了嗎?"}'],Options:[{Option:'{"text":"交出石頭"}',React:['{"text":"謝謝你"}','{"text":"你幫了大忙"}','{"text":"這是說好的報酬"}'],Condition:{Type:"item",Value:{id:"minecraft:stone",Count:3b,tag:{mysterious_stone:1b,not_mysterious_stone:1b}}},Extra:{StartCommand:"function quest:demo/sus_mysterious_stone/take",EndCommand:"function quest:demo/sus_mysterious_stone/finish"}},{Option:'{"text":"不交出石頭"}',React:['{"text":"慢慢來吧"}','{"text":"天天不會跑掉的"}']}],Quest:1b}

# 階段為3時，由 "demo.davleek" 觸發，補發獎勵道具，並將階段設為4
data modify storage quest:demo sus_mysterious_stone.Reward set value {Texts:['{"text":"上次天天一個不注意你就跑不見了"}','{"text":"這些是你應得的"}'],Extra:{StartCommand:"function quest:demo/sus_mysterious_stone/finish"}}
