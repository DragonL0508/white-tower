#The function will be triggered upon summoning.
scoreboard players set @s hostile.ability.cd 100

#Group ID system
scoreboard players operation @s hostile_id > * hostile_id
scoreboard players add @s hostile_id 1