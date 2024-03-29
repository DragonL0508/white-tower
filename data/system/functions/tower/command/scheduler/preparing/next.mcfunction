#stop the scheduler, change the state to fighting
schedule clear system:tower/command/scheduler/preparing/schedule

#messages
title @a[team=intower] subtitle [{"text":"第","color":"gray"},{"score":{"name":"floor","objective":"tower"},"color":"red"},{"text":"層","color":"gray"}]
title @a[team=intower] title {"text": "§6關卡開始"}

scoreboard players set state tower 2
function system:tower/command/scheduler/fighting