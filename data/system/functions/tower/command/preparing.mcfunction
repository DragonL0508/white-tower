#if the floor type = puzzle, teleport players if the player is leaving floor spawn
execute if score floor.type tower matches 3 as @e[type=marker, tag=floor_teleporter] at @s run function system:tower/command/player_spawn_range