say I hit an entity
particle explosion ~ ~ ~ 0 0 0 0 1 force





#---------------------------
execute store result storage prj:cache number_id int 1 run scoreboard players get @s prj.id
execute store result storage prj:cache damage int 1 run scoreboard players get @s prj.damage
data merge storage prj:cache {distance:"..3"}
data merge storage prj:cache {limit:99}
function prj:command/hit_detection/hostile_storage with storage prj:cache

kill @s
#---------------------------