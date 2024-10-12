scoreboard players add command temp 1
execute store result storage player:cache command int 1 run scoreboard players get command temp
function system:command2 with storage player:cache

execute if score command temp matches ..302 run function system:command