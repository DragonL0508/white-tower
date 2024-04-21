$execute if score @s prj.life matches 0 run function prj:projectiles/$(id)/on_death
execute if score @s prj.life matches 0 run kill @s

$function prj:projectiles/$(id)/tick

#move
$tp @s ^ ^ ^$(speed)

#
scoreboard players remove @s prj.life 1