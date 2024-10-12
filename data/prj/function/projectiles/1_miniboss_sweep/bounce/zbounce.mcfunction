scoreboard players set #temp bounce 18000
execute store result score #temp1 bounce run data get entity @s Rotation[0] 100.0
execute store result entity @s Rotation[0] float 0.01 run scoreboard players operation #temp bounce -= #temp1 bounce