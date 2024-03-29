$data modify storage tower:floor.data wave_this_mob set from storage tower:waves.cache waves.$(wave)[-1]
function system:tower/command/waves/summon with storage tower:floor.data
$data remove storage tower:waves.cache waves.$(wave)[-1]

$execute if data storage tower:waves.cache waves.$(wave)[0] run function system:tower/command/waves/load_hostiles with storage tower:waves.cache