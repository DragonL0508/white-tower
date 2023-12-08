#Made By Fan_Fan_tom
summon text_display ^ ^0.3 ^0.1 {teleport_duration:1,billboard:"center",Tags:["hp_bar"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},text:'{"text":"||||||"}'}
$scoreboard players set @e[type=text_display,sort=nearest,limit=1,tag=hp_bar] id $(id)