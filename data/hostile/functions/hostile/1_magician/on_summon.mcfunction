#The function will be triggered upon summoning.
scoreboard players set @s hostile.ability.cd 40

#Group ID system
scoreboard players operation @s 1_magician_id > * 1_magician_id
scoreboard players add @s 1_magician_id 1