#stop the scheduler, change the state to fighting
schedule clear system:tower/command/scheduler/preparing/schedule

#messages
title @a[team=intower] subtitle [{"text":"第","color":"gray"},{"score":{"name":"floor","objective":"tower"},"color":"red"},{"text":"層","color":"gray"}]
title @a[team=intower] title {"text": "§6關卡開始"}

#spawn first wave (round start!)
execute store result storage tower:floor.data wave int 1 run scoreboard players get wave tower
function system:tower/command/waves/start with storage tower:floor.data

#next scheduler
scoreboard players set state tower 2
function system:tower/command/scheduler/fighting/schedule