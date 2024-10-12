data modify storage npc:demo radion set value {}

data modify storage npc:demo radio.Normal set value []
data modify storage npc:demo radio.Normal append value {Texts:['{"text":"我是收音機器人"}','{"text":"我的工作是於開發期間幫助開發者測試對話系統"}','{"text":"今後也請多多指教"}'],Options:[{Option:'{"text":"詢問關於收音機器人"}',React:['{"text":"你剛剛一定沒有專心吧"}','{"text":"齁~閱讀測驗當掉了~"}']},{Option:'{"text":"詢問影片中的指令問題"}',React:['{"text":"如果你抄了我影片的指令卻還是做不出來"}','{"text":"那要不是你指令抄錯"}','{"text":"就是指令方塊的設定沒有調整好"}','{"text":"可別被我發現是指令放塊朝向的問題喔"}']},{Option:'{"text":"說一個笑話"}',React:['{"text":"由於本機並未實裝幽默感系統"}','{"text":"因此對於您的嘗試我一律會給出以下回應"}','{"text":"\\"哈哈\\""}']},{Option:'{"text":"讚美知識殿堂"}',React:['{"text":"感謝您給予的評價"}','{"text":"創辦人會很高興的"}']}]}

data modify storage npc:demo radio.Exit set value {Texts:['{"text":"學海無涯"}','{"text":"有什麼問題都可以來問喔"}']}

data modify storage npc:demo radio.Idle set value []
data modify storage npc:demo radio.Idle append value {Text:'{"text":"嗝~"}',Duration:1,Rest:{min:10,max:20},SoundPool:[{id:"minecraft:entity.player.burp",setting:{}}]}
data modify storage npc:demo radio.Idle append value {Text:'{"text":"嗝~~"}',Duration:2,Rest:{min:3,max:50},SoundPool:[{id:"minecraft:entity.player.burp",setting:{}}]}
