schedule function system:tower/command/scheduler/fighting/schedule 1s

#set bossbar title
execute store result storage tower:floor.data fighting_timer int 1 run scoreboard players get floor.timelimit tower
execute if score wave_cd tower matches -2147483648..2147483647 store result storage tower:floor.data wave_cd int 1 run scoreboard players get wave_cd tower
function system:tower/command/scheduler/fighting/timelimit_title with storage tower:floor.data

#countdown
scoreboard players remove floor.timelimit tower 1