#save all waves data to a cache & what is this wave?
data modify storage tower:waves.cache waves set from storage tower:floor.data wave_mobs
execute store result storage tower:waves.cache wave int 1 run scoreboard players get wave tower
tag @e remove has_summoned

#
function system:tower/command/waves/load_hostiles with storage tower:waves.cache