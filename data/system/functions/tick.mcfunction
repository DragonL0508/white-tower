#players control
    #first join
    execute as @a[tag=!joined] at @s run function system:players/first_join
    #make all players execute
    execute as @a at @s run function system:players/loop

#kill items that is not allow drops
    #offhand item
    kill @e[type=item,nbt={Item:{tag:{offhand:1b},id:"minecraft:carrot_on_a_stick"}}]