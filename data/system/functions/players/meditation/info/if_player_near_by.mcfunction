execute as @e[type=#system:meditation_display_entity,distance=..3] run data merge entity @s {Glowing:0b}
execute unless entity @a[distance=..10] run return 0

execute as @e[type=#system:meditation_display_entity,distance=..3] run data merge entity @s {Glowing:1b}