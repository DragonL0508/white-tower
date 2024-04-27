#The function will be triggered upon the mob dead.

#Kill all wolf with same Group ID
tag @s add me
execute as @e[tag=hostile_1_wolf] if score @s hostile_id = @e[tag=me,limit=1] hostile_id run scoreboard players set @s hp 0
tag @s remove me