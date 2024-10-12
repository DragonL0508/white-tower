$execute if entity @s[tag=spell.left_click] run scoreboard players set @s spell.clicked.$(button) 1
$execute if entity @s[tag=spell.right_click] run scoreboard players set @s spell.clicked.$(button) 2

$execute if entity @s[tag=spell.left_click] run function spell:spelling/button_press {button:$(button)}
$execute if entity @s[tag=spell.right_click] run function spell:spelling/button_press {button:$(button)}