execute as @e[type=marker,tag=meditation.info,distance=..5] at @s \
    run summon text_display ~ ~ ~ {billboard:"center",Tags:["meditation.text_info"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1.5f]},text:'{"bold":true,"color":"#FFF4BF","text":"右鍵查看詳情"}', background:16777215}

execute if entity @s[tag=meditation.STR] \
    as @e[type=marker,tag=meditation.info,distance=..5] at @s \
    run function system:players/meditation/info/shown_effects/str