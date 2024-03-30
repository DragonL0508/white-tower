schedule function system:tower/command/waves/wave_cd 1s

scoreboard players remove wave_cd tower 1

execute if score wave_cd tower matches 0 run function system:tower/command/waves/start_new_wave