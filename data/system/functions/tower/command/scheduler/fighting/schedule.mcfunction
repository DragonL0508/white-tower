schedule function system:tower/command/scheduler/fighting/schedule 1s

#set bossbar title
execute store result storage tower:floor.data fighting_timer int 1 run scoreboard players get floor.timelimit tower
function system:tower/command/scheduler/fighting/timelimit_title with storage tower:floor.data