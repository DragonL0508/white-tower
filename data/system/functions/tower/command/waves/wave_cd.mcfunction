schedule function system:tower/command/waves/wave_cd 1s

scoreboard players remove wave_cd tower 1

#bossbar
execute store result storage tower:floor.data wave_cd int 1 run scoreboard players get wave_cd tower
function system:tower/command/waves/wavecd_title with storage tower:floor.data

execute if score wave_cd tower matches 0 run function system:tower/command/waves/start_new_wave