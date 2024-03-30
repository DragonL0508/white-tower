#is level end?
execute if score wave tower = floor.waves tower run function system:tower/command/scheduler/fighting/win

#new wave
scoreboard players add wave tower 1
execute if score wave tower <= floor.waves tower run scoreboard players set wave_cd tower 5