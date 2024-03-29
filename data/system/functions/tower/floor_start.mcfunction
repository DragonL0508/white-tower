$scoreboard players set floor.type tower $(type)
$scoreboard players set floor.timelimit tower $(timelimit)
$scoreboard players set floor.waves tower $(waves)

tag @e[tag=floor_teleporter] remove floor_teleporter
$tag @e[tag=$(tp)] add floor_teleporter

scoreboard players set state tower 1
scoreboard players set wave tower 1
function system:tower/command/scheduler/preparing/schedule