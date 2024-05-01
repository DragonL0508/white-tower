tag @s add freeze
tag @s add tracking
execute store result score random temp run random value 1..3
execute if score random temp matches 1 run function cb:schedule {ticks:10,selector:"@s",command:"tag @s remove freeze"}
execute if score random temp matches 2 run function cb:schedule {ticks:20,selector:"@s",command:"tag @s remove freeze"}
execute if score random temp matches 3 run function cb:schedule {ticks:30,selector:"@s",command:"tag @s remove freeze"}

function cb:schedule {ticks:65,selector:"@s",command:"tag @s remove tracking"}