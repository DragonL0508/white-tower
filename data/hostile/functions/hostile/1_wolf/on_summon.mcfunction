#The function will be triggered upon summoning.
execute rotated as @e[tag=houndmaster_me] run tp @s ~ ~ ~ ~ ~
scoreboard players set @s ASSpeed 100
function hostile:entity_set_speed

#set Group ID
scoreboard players operation @s hostile_id = @e[tag=houndmaster_me] hostile_id