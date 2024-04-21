$execute if score @s prj.life matches 0 run function prj:projectiles/$(id)/on_death
execute if score @s prj.life matches 0 run kill @s

$function prj:projectiles/$(id)/tick

#move
$tp @s ^ ^ ^$(speed)

#hit block
$execute if score @s prj.through_wall matches 0 run function prj:command/hit_detection/block with storage prj:$(id)

#hit target
execute if score @s prj.target_type matches 1 run function prj:command/hit_detection/hostile
execute if score @s prj.target_type matches 2 run function prj:command/hit_detection/player

#life remove
function prj:command/remove_lifetime