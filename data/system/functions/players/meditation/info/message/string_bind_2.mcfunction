execute store result score value1 command run data get storage attribute:cache value 10000
$data modify storage attribute:cache value set from storage attribute:config $(id).$(level).$(type)
execute store result score value2 command run data get storage attribute:cache value 10000
scoreboard players operation value2 command -= value1 command
execute store result storage attribute:cache value double 0.001 run scoreboard players get value2 command

$data merge storage attribute:cache {des1:"$(des1)", des2:"$(des2)"}

function system:players/meditation/info/message/save_string with storage attribute:cache