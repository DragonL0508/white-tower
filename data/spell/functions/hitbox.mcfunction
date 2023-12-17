#interaction
    data merge entity @s {Air:1}
    data merge entity @s {Air:0}
    data remove entity @s attack
    data remove entity @s interaction

    execute positioned ~ ~-1.25 ~ unless entity @a[distance=..1] run kill @s