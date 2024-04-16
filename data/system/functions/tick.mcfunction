#players control
    #first join
    execute as @a[tag=!joined] at @s run function system:players/first_join
    #make all players execute
    execute as @a at @s run function system:players/loop

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
    execute as @e[type=marker,tag=village.particle.chimney] at @s positioned ~ ~0.1 ~ run particle campfire_signal_smoke ~ ~ ~ 0.2 0 0.2 0 1 force

#effects those always give players
    #effect give @a saturation infinite 100 true
    effect give @a[team=player] resistance infinite 100 true
    effect give @a[team=player] fire_resistance infinite 100 true