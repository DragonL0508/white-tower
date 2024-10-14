execute as @a at @s if block ~ ~-0.05 ~ red_concrete run damage @s 10 magic
execute as @a at @s if block ~ ~-0.05 ~ red_concrete run playsound entity.enderman.teleport master @a ~ ~ ~ 1
execute as @a at @s if block ~ ~-0.05 ~ red_concrete run particle minecraft:portal ~ ~1 ~ 0.2 0.5 0.2 0.05 50 force @a
execute as @a at @s if block ~ ~-0.05 ~ red_concrete run tp @s @e[type=marker,tag=floor_teleporter,limit=1]

execute as @a at @s if block ~ ~-0.05 ~ green_concrete run particle minecraft:block green_concrete ~ ~ ~ 0.2 0 0.2 0 5 force
execute as @a at @s if block ~ ~-0.05 ~ green_concrete run effect give @s jump_boost 1 127 true

execute as @a at @s if block ~ ~-0.05 ~ brown_concrete run particle minecraft:large_smoke ~ ~1 ~ 0 0.5 0 0.05 30 force @a
execute as @a at @s if block ~ ~-0.05 ~ brown_concrete run playsound block.lava.extinguish master @a ~ ~ ~ 1
execute as @a at @s if block ~ ~-0.05 ~ brown_concrete run kill @s

execute as @a at @s if block ~ ~-0.05 ~ yellow_concrete run function system:tower/floors/16/method/teleport_player {offset_x:1, offset_y:0, offset_z:0}
execute as @a at @s if block ~ ~-0.05 ~ purple_concrete run function system:tower/floors/16/method/teleport_player {offset_x:0, offset_y:0, offset_z:1}
execute as @a at @s if block ~ ~-0.05 ~ orange_concrete run function system:tower/floors/16/method/teleport_player {offset_x:-1, offset_y:0, offset_z:0}
execute as @a at @s if block ~ ~-0.05 ~ magenta_concrete run function system:tower/floors/16/method/teleport_player {offset_x:0, offset_y:0, offset_z:-1}


execute as @a at @s if block ~ ~-0.05 ~ cyan_concrete run particle dust 1 0 0 1 ~ ~1 ~ 0.2 0.5 0.2 0 3 force
execute as @a at @s if block ~ ~-0.05 ~ cyan_concrete run damage @s 4 magic

execute as @e[type=marker,tag=11-20sp2win] at @s if entity @a[dz=-6] run function system:tower/command/scheduler/fighting/win