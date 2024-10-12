$scoreboard players set @s actionbar_type $(actionbar_type)
function spell:spelling/animation/fail

#scoreboard reset
scoreboard players set @s spell.button 1
scoreboard players reset @s spell.clicked.1
scoreboard players reset @s spell.clicked.2
scoreboard players reset @s spell.clicked.3

tag @s add spell.fail