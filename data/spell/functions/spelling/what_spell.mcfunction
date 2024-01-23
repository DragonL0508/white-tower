scoreboard players reset @s spell.what_spell

#normal attack
execute if score @s spell.clicked.1 matches 1 if score @s spell.clicked.2 matches 1 if score @s spell.clicked.3 matches 1 run scoreboard players set @s spell.what_spell 0
#slot 1
execute if score @s spell.clicked.1 matches 1 if score @s spell.clicked.2 matches 1 if score @s spell.clicked.3 matches 2 run scoreboard players set @s spell.what_spell 1
#slot 2
execute if score @s spell.clicked.1 matches 1 if score @s spell.clicked.2 matches 2 if score @s spell.clicked.3 matches 1 run scoreboard players set @s spell.what_spell 2
#slot 3
execute if score @s spell.clicked.1 matches 2 if score @s spell.clicked.2 matches 2 if score @s spell.clicked.3 matches 1 run scoreboard players set @s spell.what_spell 3

execute if score @s spell.what_spell matches -2147483648..2147483647 run function spell:spelling/spelling_entry
execute unless score @s spell.what_spell matches -2147483648..2147483647 run function spell:spelling/fail