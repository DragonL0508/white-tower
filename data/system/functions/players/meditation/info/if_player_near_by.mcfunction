execute unless entity @a[distance=..10] run return run execute as @e[type=#system:meditation_display_entity,distance=..3] run data merge entity @s {Glowing:0b}

execute as @e[type=#system:meditation_display_entity,distance=..3] run data merge entity @s {Glowing:1b}