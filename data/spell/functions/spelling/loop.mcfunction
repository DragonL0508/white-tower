#summon new hitbox when hitbox gone
    execute positioned ~ ~1.25 ~ unless entity @e[type=interaction,tag=spell.hitbox,distance=..1] run summon interaction ~ ~ ~ {Tags:["spell.hitbox"],width:0.5f,height:0.5f}

#player button detect
    execute store result storage spell.button.temp button int 1.0 run scoreboard players get @s spell.button
    execute if entity @s[tag=!spelling] run function spell:spelling/button_detector with storage spell.button.temp

#is spelling
    execute if entity @s[tag=spelling] run function spell:spelling/spelling_loop

#not holding magic stick anymore
    execute unless data entity @s SelectedItem{tag:{magic_stick:1b}} run function spell:stop