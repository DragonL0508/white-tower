say shield enable
scoreboard players reset @s shield.recover.timer
tag @s add shield.enable

#attribute
attribute @s generic.knockback_resistance base set 100
attribute @s generic.movement_speed base set 0.05
effect give @s resistance infinite 4 true
effect give @s weakness infinite 100 true