#The function will be triggered upon summoning.
execute rotated as @e[tag=houndmaster_me] run tp @s ~ ~ ~ ~ ~
scoreboard players set @s ASSpeed 15
function hostile:entity_set_speed
data modify entity @s Motion[1] set value 0.5

#set Group ID
scoreboard players operation @s hostile_id = @e[tag=houndmaster_me] hostile_id