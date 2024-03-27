data modify storage hostile.list.cache loop_target.id set from storage hostile.list.cache list[-1]
function hostile:run_cmd with storage hostile.list.cache loop_target
data remove storage hostile.list.cache list[-1]

execute if data storage minecraft:hostile.list.cache list[0] run function hostile:make_target_execute