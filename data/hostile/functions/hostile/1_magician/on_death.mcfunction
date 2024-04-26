#The function will be triggered upon the mob dead.

#Kill all vex with same Group ID
tag @s add me
execute as @e[tag=hostile_1_magician_vex] if score @s 1_magician_id = @e[tag=me,limit=1] 1_magician_id run scoreboard players set @s hp 0
tag @s remove me