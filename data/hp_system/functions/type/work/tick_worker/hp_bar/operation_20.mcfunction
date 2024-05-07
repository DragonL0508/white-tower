#Made By Fan_Fan_tom
scoreboard players set 10 command 10
$scoreboard players set tmp_hp command $(tmp_hp)
$scoreboard players set tmp_maxhp command $(tmp_maxhp)
$scoreboard players set display_hp command $(tmp_hp)
$scoreboard players set display_maxhp command $(tmp_maxhp)

scoreboard players operation tmp_maxhp command /= 10 command
scoreboard players operation tmp_hp command /= tmp_maxhp command

execute if score tmp_hp command matches 10.. on passengers if entity @s[tag=hp_bar,type=text_display] run data merge entity @s {text:'[{"text":"§7[§a|||||||||| "},{"score":{"name":"display_hp","objective":"command"},"color":"red"},{"text":"§c/"},{"score":{"name":"display_maxhp","objective":"command"},"color":"red"},{"text":"§7]"}]'}
execute if score tmp_hp command matches 9 on passengers if entity @s[tag=hp_bar,type=text_display] run data merge entity @s {text:'[{"text":"§7[§a|||||||||§7| "},{"score":{"name":"display_hp","objective":"command"},"color":"red"},{"text":"§c/"},{"score":{"name":"display_maxhp","objective":"command"},"color":"red"},{"text":"§7]"}]'}
execute if score tmp_hp command matches 8 on passengers if entity @s[tag=hp_bar,type=text_display] run data merge entity @s {text:'[{"text":"§7[§a||||||||§7|| "},{"score":{"name":"display_hp","objective":"command"},"color":"red"},{"text":"§c/"},{"score":{"name":"display_maxhp","objective":"command"},"color":"red"},{"text":"§7]"}]'}
execute if score tmp_hp command matches 7 on passengers if entity @s[tag=hp_bar,type=text_display] run data merge entity @s {text:'[{"text":"§7[§a|||||||§7||| "},{"score":{"name":"display_hp","objective":"command"},"color":"red"},{"text":"§c/"},{"score":{"name":"display_maxhp","objective":"command"},"color":"red"},{"text":"§7]"}]'}
execute if score tmp_hp command matches 6 on passengers if entity @s[tag=hp_bar,type=text_display] run data merge entity @s {text:'[{"text":"§7[§a||||||§7|||| "},{"score":{"name":"display_hp","objective":"command"},"color":"red"},{"text":"§c/"},{"score":{"name":"display_maxhp","objective":"command"},"color":"red"},{"text":"§7]"}]'}
execute if score tmp_hp command matches 5 on passengers if entity @s[tag=hp_bar,type=text_display] run data merge entity @s {text:'[{"text":"§7[§a|||||§7||||| "},{"score":{"name":"display_hp","objective":"command"},"color":"red"},{"text":"§c/"},{"score":{"name":"display_maxhp","objective":"command"},"color":"red"},{"text":"§7]"}]'}
execute if score tmp_hp command matches 4 on passengers if entity @s[tag=hp_bar,type=text_display] run data merge entity @s {text:'[{"text":"§7[§a||||§7|||||| "},{"score":{"name":"display_hp","objective":"command"},"color":"red"},{"text":"§c/"},{"score":{"name":"display_maxhp","objective":"command"},"color":"red"},{"text":"§7]"}]'}
execute if score tmp_hp command matches 3 on passengers if entity @s[tag=hp_bar,type=text_display] run data merge entity @s {text:'[{"text":"§7[§a|||§7||||||| "},{"score":{"name":"display_hp","objective":"command"},"color":"red"},{"text":"§c/"},{"score":{"name":"display_maxhp","objective":"command"},"color":"red"},{"text":"§7]"}]'}
execute if score tmp_hp command matches 2 on passengers if entity @s[tag=hp_bar,type=text_display] run data merge entity @s {text:'[{"text":"§7[§a||§7|||||||| "},{"score":{"name":"display_hp","objective":"command"},"color":"red"},{"text":"§c/"},{"score":{"name":"display_maxhp","objective":"command"},"color":"red"},{"text":"§7]"}]'}
execute if score tmp_hp command matches 1 on passengers if entity @s[tag=hp_bar,type=text_display] run data merge entity @s {text:'[{"text":"§7[§a|§7||||||||| "},{"score":{"name":"display_hp","objective":"command"},"color":"red"},{"text":"§c/"},{"score":{"name":"display_maxhp","objective":"command"},"color":"red"},{"text":"§7]"}]'}
execute if score tmp_hp command matches 0 on passengers if entity @s[tag=hp_bar,type=text_display] run data merge entity @s {text:'[{"text":"§7[§7|||||||||| "},{"score":{"name":"display_hp","objective":"command"},"color":"red"},{"text":"§c/"},{"score":{"name":"display_maxhp","objective":"command"},"color":"red"},{"text":"§7]"}]'}
