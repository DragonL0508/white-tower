#Made By Fan_Fan_tom
scoreboard players set 10 command 10
$scoreboard players set tmp_hp command $(tmp_hp)
$scoreboard players set tmp_maxhp command $(tmp_maxhp)
$scoreboard players set display_hp command $(tmp_hp)
$scoreboard players set display_maxhp command $(tmp_maxhp)

scoreboard players operation tmp_maxhp command /= 10 command
scoreboard players operation tmp_hp command /= tmp_maxhp command

$execute if score tmp_hp command matches 10.. run data merge entity @e[type=text_display,tag=hp_bar,sort=nearest,limit=1,scores={id=$(id)}] {text:'[{"text":"§7[§a|||||||||| "},{"score":{"name":"display_hp","objective":"command"},"color":"red"},{"text":"§c/"},{"score":{"name":"display_maxhp","objective":"command"},"color":"red"},{"text":"§7]"}]'}
$execute if score tmp_hp command matches 9 run data merge entity @e[type=text_display,tag=hp_bar,sort=nearest,limit=1,scores={id=$(id)}] {text:'[{"text":"§7[§a|||||||||§7| "},{"score":{"name":"display_hp","objective":"command"},"color":"red"},{"text":"§c/"},{"score":{"name":"display_maxhp","objective":"command"},"color":"red"},{"text":"§7]"}]'}
$execute if score tmp_hp command matches 8 run data merge entity @e[type=text_display,tag=hp_bar,sort=nearest,limit=1,scores={id=$(id)}] {text:'[{"text":"§7[§a||||||||§7|| "},{"score":{"name":"display_hp","objective":"command"},"color":"red"},{"text":"§c/"},{"score":{"name":"display_maxhp","objective":"command"},"color":"red"},{"text":"§7]"}]'}
$execute if score tmp_hp command matches 7 run data merge entity @e[type=text_display,tag=hp_bar,sort=nearest,limit=1,scores={id=$(id)}] {text:'[{"text":"§7[§a|||||||§7||| "},{"score":{"name":"display_hp","objective":"command"},"color":"red"},{"text":"§c/"},{"score":{"name":"display_maxhp","objective":"command"},"color":"red"},{"text":"§7]"}]'}
$execute if score tmp_hp command matches 6 run data merge entity @e[type=text_display,tag=hp_bar,sort=nearest,limit=1,scores={id=$(id)}] {text:'[{"text":"§7[§a||||||§7|||| "},{"score":{"name":"display_hp","objective":"command"},"color":"red"},{"text":"§c/"},{"score":{"name":"display_maxhp","objective":"command"},"color":"red"},{"text":"§7]"}]'}
$execute if score tmp_hp command matches 5 run data merge entity @e[type=text_display,tag=hp_bar,sort=nearest,limit=1,scores={id=$(id)}] {text:'[{"text":"§7[§a|||||§7||||| "},{"score":{"name":"display_hp","objective":"command"},"color":"red"},{"text":"§c/"},{"score":{"name":"display_maxhp","objective":"command"},"color":"red"},{"text":"§7]"}]'}
$execute if score tmp_hp command matches 4 run data merge entity @e[type=text_display,tag=hp_bar,sort=nearest,limit=1,scores={id=$(id)}] {text:'[{"text":"§7[§a||||§7|||||| "},{"score":{"name":"display_hp","objective":"command"},"color":"red"},{"text":"§c/"},{"score":{"name":"display_maxhp","objective":"command"},"color":"red"},{"text":"§7]"}]'}
$execute if score tmp_hp command matches 3 run data merge entity @e[type=text_display,tag=hp_bar,sort=nearest,limit=1,scores={id=$(id)}] {text:'[{"text":"§7[§a|||§7||||||| "},{"score":{"name":"display_hp","objective":"command"},"color":"red"},{"text":"§c/"},{"score":{"name":"display_maxhp","objective":"command"},"color":"red"},{"text":"§7]"}]'}
$execute if score tmp_hp command matches 2 run data merge entity @e[type=text_display,tag=hp_bar,sort=nearest,limit=1,scores={id=$(id)}] {text:'[{"text":"§7[§a||§7|||||||| "},{"score":{"name":"display_hp","objective":"command"},"color":"red"},{"text":"§c/"},{"score":{"name":"display_maxhp","objective":"command"},"color":"red"},{"text":"§7]"}]'}
$execute if score tmp_hp command matches 1 run data merge entity @e[type=text_display,tag=hp_bar,sort=nearest,limit=1,scores={id=$(id)}] {text:'[{"text":"§7[§a|§7||||||||| "},{"score":{"name":"display_hp","objective":"command"},"color":"red"},{"text":"§c/"},{"score":{"name":"display_maxhp","objective":"command"},"color":"red"},{"text":"§7]"}]'}
$execute if score tmp_hp command matches 0 run data merge entity @e[type=text_display,tag=hp_bar,sort=nearest,limit=1,scores={id=$(id)}] {text:'[{"text":"§7[§7|||||||||| "},{"score":{"name":"display_hp","objective":"command"},"color":"red"},{"text":"§c/"},{"score":{"name":"display_maxhp","objective":"command"},"color":"red"},{"text":"§7]"}]'}
