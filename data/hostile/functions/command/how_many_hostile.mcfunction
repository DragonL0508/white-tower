$scoreboard players set hostile.type.counter command $(counter)

#execute on death command
$data modify storage hostile:list.cache target_tag set from storage hostile:list.cache list[$(counter)]
function hostile:command/is_target with storage hostile:list.cache

#if there're more
$execute if data storage hostile:list.cache list[$(counter)] run scoreboard players operation hostile.type.counter command += 1 command
$execute if data storage hostile:list.cache list[$(counter)] store result storage hostile.counter.cache counter int 1 run scoreboard players get hostile.type.counter command
$execute if data storage hostile:list.cache list[$(counter)] run function hostile:command/how_many_hostile with storage hostile.counter.cache