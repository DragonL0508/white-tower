#is level end?
execute if score wave tower = floor.waves tower run function system:tower/command/scheduler/fighting/win

#new wave
execute unless score wave tower = floor.waves tower run function system:tower/command/waves/start_new_wave