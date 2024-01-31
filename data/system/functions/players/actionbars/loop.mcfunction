    #main loop
    execute if score @s actionbar_type matches 1 run function system:players/actionbars/normal
    execute if score @s actionbar_type matches 2 run function system:players/actionbars/spelling
    execute if score @s actionbar_type matches 3 run function system:players/actionbars/spelling_fail_mana
    execute if score @s actionbar_type matches 4 run function system:players/actionbars/spelling_fail_button