#hit box
    execute if data entity @s[tag=!ms.holding] SelectedItem{tag:{magic_stick:1b}} run function spell:hitbox_summon
    #tick
    execute if entity @s[tag=ms.holding] run function spell:interaction