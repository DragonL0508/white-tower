#> hp_system:type/work/tick_worker/hp_bar/summon_normal
#Made by Fan_Fan_tom
#adjust by 930901


#execute if entity @s[type=!#hp_system:low_height,type=!#hp_system:tall_height] run summon text_display ~ ~2.4 ~ {teleport_duration:3,billboard:"center",alignment:"center",Tags:["hp_bar","normal"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},text:'{"text":""}'}
summon text_display ~ ~2.4 ~ {teleport_duration:1,billboard:"center",alignment:"center",Tags:["hp_bar","normal","newest"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.4f,0f],scale:[1f,1f,1f]},text:'{"text":""}'}
#execute if entity @s[type=#hp_system:tall_height] run summon text_display ~ ~3.2 ~ {teleport_duration:3,billboard:"center",alignment:"center",Tags:["hp_bar","normal"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},text:'{"text":""}'}



ride @e[type=text_display,tag=hp_bar,tag=normal,sort=nearest,limit=1,tag=newest] mount @s
execute on passengers if entity @s[type=text_display,tag=hp_bar,tag=normal,tag=newest] run tag @s remove newest

