#messages
title @a[team=intower] subtitle [{"text":"第","color":"gray"},{"score":{"name":"wave","objective":"tower"},"color":"red"},{"text":"波","color":"gray"}]
title @a[team=intower] title {"text": ""}
execute as @a[team=intower] at @s run playsound block.dripstone_block.break master @s ~ ~ ~ 1 0 1

#summon
execute store result storage tower:floor.data wave int 1 run scoreboard players get wave tower
function system:tower/command/waves/start with storage tower:floor.data