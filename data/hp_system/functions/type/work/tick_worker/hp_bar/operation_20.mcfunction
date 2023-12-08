#Made By Fan_Fan_tom
scoreboard players set 20 command 20
$scoreboard players set tmp_hp command $(tmp_hp)
$scoreboard players set tmp_maxhp command $(tmp_maxhp)

scoreboard players operation tmp_maxhp command /= 20 command
scoreboard players operation tmp_hp command /= tmp_maxhp command

$execute if score tmp_hp command matches 20.. run data merge entity @e[type=text_display,tag=hp_bar,sort=nearest,limit=1,scores={id=$(id)}] {text:'"§a||||||||||||||||||||"'}
$execute if score tmp_hp command matches 19 run data merge entity @e[type=text_display,tag=hp_bar,sort=nearest,limit=1,scores={id=$(id)}] {text:'"§a|||||||||||||||||||§7|"'}
$execute if score tmp_hp command matches 18 run data merge entity @e[type=text_display,tag=hp_bar,sort=nearest,limit=1,scores={id=$(id)}] {text:'"§a||||||||||||||||||§7||"'}
$execute if score tmp_hp command matches 17 run data merge entity @e[type=text_display,tag=hp_bar,sort=nearest,limit=1,scores={id=$(id)}] {text:'"§a|||||||||||||||||§7|||"'}
$execute if score tmp_hp command matches 16 run data merge entity @e[type=text_display,tag=hp_bar,sort=nearest,limit=1,scores={id=$(id)}] {text:'"§a||||||||||||||||§7||||"'}
$execute if score tmp_hp command matches 15 run data merge entity @e[type=text_display,tag=hp_bar,sort=nearest,limit=1,scores={id=$(id)}] {text:'"§a|||||||||||||||§7|||||"'}
$execute if score tmp_hp command matches 14 run data merge entity @e[type=text_display,tag=hp_bar,sort=nearest,limit=1,scores={id=$(id)}] {text:'"§a||||||||||||||§7||||||"'}
$execute if score tmp_hp command matches 13 run data merge entity @e[type=text_display,tag=hp_bar,sort=nearest,limit=1,scores={id=$(id)}] {text:'"§a|||||||||||||§7|||||||"'}
$execute if score tmp_hp command matches 12 run data merge entity @e[type=text_display,tag=hp_bar,sort=nearest,limit=1,scores={id=$(id)}] {text:'"§a||||||||||||§7||||||||"'}
$execute if score tmp_hp command matches 11 run data merge entity @e[type=text_display,tag=hp_bar,sort=nearest,limit=1,scores={id=$(id)}] {text:'"§a|||||||||||§7|||||||||"'}
$execute if score tmp_hp command matches 10 run data merge entity @e[type=text_display,tag=hp_bar,sort=nearest,limit=1,scores={id=$(id)}] {text:'"§a||||||||||§7||||||||||"'}
$execute if score tmp_hp command matches 9 run data merge entity @e[type=text_display,tag=hp_bar,sort=nearest,limit=1,scores={id=$(id)}] {text:'"§a|||||||||§7|||||||||||"'}
$execute if score tmp_hp command matches 8 run data merge entity @e[type=text_display,tag=hp_bar,sort=nearest,limit=1,scores={id=$(id)}] {text:'"§a||||||||§7||||||||||||"'}
$execute if score tmp_hp command matches 7 run data merge entity @e[type=text_display,tag=hp_bar,sort=nearest,limit=1,scores={id=$(id)}] {text:'"§a|||||||§7|||||||||||||"'}
$execute if score tmp_hp command matches 6 run data merge entity @e[type=text_display,tag=hp_bar,sort=nearest,limit=1,scores={id=$(id)}] {text:'"§a||||||§7||||||||||||||"'}
$execute if score tmp_hp command matches 5 run data merge entity @e[type=text_display,tag=hp_bar,sort=nearest,limit=1,scores={id=$(id)}] {text:'"§a|||||§7|||||||||||||||"'}
$execute if score tmp_hp command matches 4 run data merge entity @e[type=text_display,tag=hp_bar,sort=nearest,limit=1,scores={id=$(id)}] {text:'"§a||||§7||||||||||||||||"'}
$execute if score tmp_hp command matches 3 run data merge entity @e[type=text_display,tag=hp_bar,sort=nearest,limit=1,scores={id=$(id)}] {text:'"§a|||§7|||||||||||||||||"'}
$execute if score tmp_hp command matches 2 run data merge entity @e[type=text_display,tag=hp_bar,sort=nearest,limit=1,scores={id=$(id)}] {text:'"§a||§7||||||||||||||||||"'}
$execute if score tmp_hp command matches 1 run data merge entity @e[type=text_display,tag=hp_bar,sort=nearest,limit=1,scores={id=$(id)}] {text:'"§a|§7|||||||||||||||||||"'}
$execute if score tmp_hp command matches 0 run data merge entity @e[type=text_display,tag=hp_bar,sort=nearest,limit=1,scores={id=$(id)}] {text:'"§7||||||||||||||||||||"'}
