tag @s remove flying
tag @s remove ability_using
data merge entity @s {NoAI:0b}

execute positioned ^ ^3.5 ^ run function prj:summon/1_boss_tracking_orb
execute positioned ^1 ^3 ^ run function prj:summon/1_boss_tracking_orb
execute positioned ^-1 ^3 ^ run function prj:summon/1_boss_tracking_orb