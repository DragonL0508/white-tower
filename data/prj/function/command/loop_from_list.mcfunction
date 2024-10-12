data modify storage prj:list_cache loop_target.id set from storage prj:list_cache list[-1]
function prj:command/run_cmd with storage prj:list_cache loop_target
data remove storage prj:list_cache list[-1]

execute if data storage prj:list_cache list[0] run function prj:command/loop_from_list