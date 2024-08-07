#players control
    #first join
    execute as @a[tag=!joined] at @s run function system:players/first_join
    #make all players execute
    execute as @a[team=player] at @s run function system:players/loop_player
    execute as @a[team=intower] at @s run function system:players/loop_intower
    execute as @a at @s run function system:players/loop_always

#tower loop
    function system:tower/tick

#kill items that is not allowed
    #offhand item
    kill @e[type=item,nbt={Item:{tag:{offhand:1b},id:"minecraft:carrot_on_a_stick"}}]
    #pots item
    kill @e[type=item,nbt={Item:{tag:{player.pots:1b}}}]
    #arrows in ground
    kill @e[type=arrow,nbt={inGround:1b}]

#global animation (for macro)
    scoreboard players add shield.animation temp 18
    execute if score shield.animation temp matches 360 run scoreboard players set shield.animation temp 0
    execute store result storage shield.animation.angle angle int 1.0 run scoreboard players get shield.animation temp

#map particles
    execute as @e[type=marker,tag=village.particle.chimney] at @s run particle campfire_cosy_smoke ~ ~ ~ 0 10 0 0.008 0 force

#meditation
    execute if entity @a[tag=in_meditation] run function system:players/meditation/loop

#effects those always give players
    #effect give @a saturation infinite 100 true
    effect give @a[team=player] resistance infinite 100 true
    effect give @a[team=player] fire_resistance infinite 100 true