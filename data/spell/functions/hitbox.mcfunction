#interaction
    #player click
    execute on attacker run tag @s add spell.left_click
    execute on target run tag @s add spell.right_click

    #update
    data remove entity @s attack
    data remove entity @s interaction

    execute positioned ~ ~-1.25 ~ unless entity @a[distance=..1] run kill @s