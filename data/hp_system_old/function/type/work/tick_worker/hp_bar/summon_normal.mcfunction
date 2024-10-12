#Made by Fan_Fan_tom


execute if entity @s[type=!#hp_system:low_height,type=!#hp_system:tall_height] run summon text_display ~ ~2.4 ~ {teleport_duration:3,billboard:"center",alignment:"center",Tags:["hp_bar","normal"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},text:'{"text":""}'}
execute if entity @s[type=#hp_system:low_height] run summon text_display ~ ~1.15 ~ {teleport_duration:3,billboard:"center",alignment:"center",Tags:["hp_bar","normal"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},text:'{"text":""}'}
execute if entity @s[type=#hp_system:tall_height] run summon text_display ~ ~3.2 ~ {teleport_duration:3,billboard:"center",alignment:"center",Tags:["hp_bar","normal"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},text:'{"text":""}'}


$scoreboard players set @e[type=text_display,tag=hp_bar,tag=normal,sort=nearest,limit=1] id $(id)


