#teleport
    execute positioned ~ ~1.25 ~ run tp @e[type=interaction,tag=spell.hitbox,sort=nearest,limit=1,distance=..0.5] ~ ~ ~

#not holding magic stick anymore
    execute unless data entity @s SelectedItem{tag:{magic_stick:1b}} run function spell:stop