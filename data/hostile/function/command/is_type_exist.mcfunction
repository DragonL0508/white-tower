$scoreboard players set hostile.type.counter command $(counter)

#is exist
$execute unless data storage hostile:list.cache {list:["$(id)"]} run data modify storage hostile:list list prepend from storage hostile:$(id) id
$execute unless data storage hostile:list.cache {list:["$(id)"]} run data remove storage hostile:list.cache list

#if there're more
$execute if data storage hostile:list.cache list[$(counter)] run scoreboard players operation hostile.type.counter command += 1 command
$execute if data storage hostile:list.cache list[$(counter)] store result storage hostile.counter.cache counter int 1 run scoreboard players get hostile.type.counter command
$execute if data storage hostile:list.cache list[$(counter)] run function hostile:command/is_type_exist with storage hostile.counter.cache