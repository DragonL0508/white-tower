#interaction
    execute as @e[type=interaction,tag=spell.hitbox] run data merge entity @s {Air:1}
    execute as @e[type=interaction,tag=spell.hitbox] run data merge entity @s {Air:0}
    execute as @e[type=interaction,tag=spell.hitbox] run data remove entity @s attack
    execute as @e[type=interaction,tag=spell.hitbox] run data remove entity @s interaction