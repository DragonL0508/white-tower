execute as @e[type=interaction,tag=meditation.interaction,sort=nearest,limit=1] at @s \
    unless entity @a[distance=..10] \
    if entity @e[type=text_display, tag=meditation.text_info, distance=..5] \
    run return run function system:players/meditation/info/text_remove

    execute as @e[type=interaction,tag=meditation.interaction,sort=nearest,limit=1] at @s \
    if entity @a[distance=..10] \
    unless entity @e[type=text_display, tag=meditation.text_info, distance=..5] \
    run return run function system:players/meditation/info/text_shown