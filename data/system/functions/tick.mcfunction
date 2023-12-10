#players control
    #first join
    execute as @a[tag=!joined] at @s run function system:players/first_join
    #make all players execute
    execute as @a at @s run function system:players/loop