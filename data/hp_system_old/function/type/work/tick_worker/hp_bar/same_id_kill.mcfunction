#Made By Fan_Fan_tom
scoreboard players operation tmp2 id = @s id

execute as @e[type=text_display,scores={id=1..},tag=hp_bar] if score @s id = tmp2 id run tp @s ~ ~-987 ~
execute as @e[type=text_display,scores={id=1..},tag=hp_bar] if score @s id = tmp2 id run kill @s

#哪個實體死亡
function hp_system:type/which_entity_died

kill @s