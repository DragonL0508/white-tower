$scoreboard players set prj.type.counter command $(counter)

#is exist
$execute unless data storage prj:list.cache {list:["$(id)"]} run data modify storage prj:list list prepend from storage prj:$(id) id
$execute unless data storage prj:list.cache {list:["$(id)"]} run data remove storage prj:list.cache list

#if there're more
$execute if data storage prj:list.cache list[$(counter)] run scoreboard players operation prj.type.counter command += 1 command
$execute if data storage prj:list.cache list[$(counter)] store result storage prj:counter.cache counter int 1 run scoreboard players get prj.type.counter command
$execute if data storage prj:list.cache list[$(counter)] run function prj:command/is_type_exist with storage prj:counter.cache