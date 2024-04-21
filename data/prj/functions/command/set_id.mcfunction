scoreboard players operation @s prj.id > * prj.id
scoreboard players add @s prj.id 1
execute store result storage prj:this number_id int 1 run scoreboard players get @s prj.id