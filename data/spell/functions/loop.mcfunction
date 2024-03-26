#hit box
    execute if data entity @s[tag=!ms.holding] SelectedItem{tag:{magic_wand:1b}} run function spell:start
#tick
    execute if entity @s[tag=ms.holding] run function spell:interaction
#click detection
    execute if entity @s[tag=ms.holding] run function spell:spelling/loop
#spell click resetion
    tag @s remove spell.left_click
    tag @s remove spell.right_click