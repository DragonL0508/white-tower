#is level end?
execute if score wave tower = floor.waves tower run function system:tower/command/scheduler/fighting/win

#new wave
bossbar set timelimit max 5
scoreboard players add wave tower 1
execute if score wave tower <= floor.waves tower run scoreboard players set wave_cd tower 5
execute if score wave tower <= floor.waves tower run function system:tower/command/waves/wave_cd